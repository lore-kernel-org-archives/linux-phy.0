Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77F32E77173
	for <linux-phy@archiver.kernel.org>; Mon,  9 Dec 2024 08:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ds8uwzdzkXudalz7q411R02Whue8Vphgypix57QgRzg=; b=uaLVN46YiVjpeD
	74m8j9Ockd21fYPk5q29ouWT0FCJQtBXY4P2S2jX52c6NYsHosNgIYDqEAfNeIdfc7QsyMxBNiKO6
	S+lb04Ym14RMoGx3mB2t5RLTo2a+znPibOdU6EQLrUIOWZKiuIFoACwFr1CSQYy2dEpohY+tgf3kQ
	JAIBEr1pOF/K85qusDr3AbqJVPEfsGeCR6EFmJSmSyQaMhHGgXjHjYAr0QLvUlm+f7bEPzol8j7QX
	ewEwfguKPS21S+XwZtSoe/PstRKjNWeyVufu7lcpezjaaQmalswoaKExHmy0MOnXWO5kqY3US5cP3
	9kwz4TOK0FtYpEA1tyBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKZCH-00000006vwL-0s5D;
	Mon, 09 Dec 2024 08:32:53 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKZCF-00000006vvT-1epN
	for linux-phy@lists.infradead.org;
	Mon, 09 Dec 2024 08:32:52 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B8NkfZg026266;
	Mon, 9 Dec 2024 08:31:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5JWJQeMuxVdd3PTedl0CqTUR7/F63JFS3DnJm9lmHvc=; b=flBhOtwvTAsTbQgk
	sBmsFgsMCA6vdmyTBxA/AxZGD5oWuXKoQfL4LMy/wG9ToUyfDMSl4odKNzkgLLhd
	b9L9Gp9klloOyU3EF/zRcJ5jA7C67RZ765h09eLWrJQPx7aFReglCN85nnG24hbS
	pzzquQcp50lQxjLw/3Q3yEt21YuKjLO/gUcZl2qk1uyaKZ+N00h7bAqxj9mEx7XV
	1vBhBVwOZ580RkZiydKLtNvSykXwyMC1FzSXVCLHtnyhpgUw9Wr1ZkKIsHcgQvNz
	PnrAxwoIrVR0V0FGhuTDnAna+Q7x1Suplj+sCfxY9IOamr428ztpjKsQvd5YJgK7
	rRriRA==
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43cdaqc07g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 09 Dec 2024 08:31:44 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4B98Vhib031537
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 9 Dec 2024 08:31:43 GMT
Received: from [10.64.68.72] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Mon, 9 Dec 2024
 00:31:37 -0800
Message-ID: <66654b75-cfc2-470c-90e9-76da5e2a1f47@quicinc.com>
Date: Mon, 9 Dec 2024 16:31:34 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/3] arm64: dts: qcom: qcs615-ride: Enable UFS node
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
CC: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        "Kishon Vijay Abraham I" <kishon@kernel.org>,
        Alim Akhtar
	<alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche
	<bvanassche@acm.org>,
        "Andy Gross" <agross@kernel.org>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-scsi@vger.kernel.org>,
        <quic_jiegan@quicinc.com>, <quic_aiquny@quicinc.com>,
        <quic_tingweiz@quicinc.com>, <quic_sayalil@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20241122064428.278752-1-quic_liuxin@quicinc.com>
 <20241122064428.278752-4-quic_liuxin@quicinc.com>
 <20241202144844.erqdn5ltsblyhy27@thinkpad>
From: Xin Liu <quic_liuxin@quicinc.com>
In-Reply-To: <20241202144844.erqdn5ltsblyhy27@thinkpad>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: N23WULfSTj1uOtbJc5r9tM0RNtCt1BYi
X-Proofpoint-ORIG-GUID: N23WULfSTj1uOtbJc5r9tM0RNtCt1BYi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 phishscore=0
 clxscore=1015 suspectscore=0 priorityscore=1501 lowpriorityscore=0
 adultscore=0 mlxlogscore=999 bulkscore=0 mlxscore=0 spamscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412090065
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241209_003251_509890_C0820523 
X-CRM114-Status: GOOD (  11.76  )
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

CgrlnKggMjAyNC8xMi8yIDIyOjQ4LCBNYW5pdmFubmFuIFNhZGhhc2l2YW0g5YaZ6YGTOgo+IE9u
IEZyaSwgTm92IDIyLCAyMDI0IGF0IDAyOjQ0OjI4UE0gKzA4MDAsIFhpbiBMaXUgd3JvdGU6Cj4+
IEZyb206IFNheWFsaSBMb2toYW5kZSA8cXVpY19zYXlhbGlsQHF1aWNpbmMuY29tPgo+Pgo+PiBF
bmFibGUgVUZTIG9uIHRoZSBRdWFsY29tbSBRQ1M2MTUgUmlkZSBwbGF0Zm9ybS4KPj4KPj4gU2ln
bmVkLW9mZi1ieTogU2F5YWxpIExva2hhbmRlIDxxdWljX3NheWFsaWxAcXVpY2luYy5jb20+Cj4+
IFJldmlld2VkLWJ5OiBLb25yYWQgRHliY2lvIDxrb25yYWQuZHliY2lvQG9zcy5xdWFsY29tbS5j
b20+Cj4+IENvLWRldmVsb3BlZC1ieTogWGluIExpdSA8cXVpY19saXV4aW5AcXVpY2luYy5jb20+
Cj4+IFNpZ25lZC1vZmYtYnk6IFhpbiBMaXUgPHF1aWNfbGl1eGluQHF1aWNpbmMuY29tPgo+IAo+
IEFja2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2YW5uYW4uc2FkaGFzaXZhbUBs
aW5hcm8ub3JnPgo+IAo+IE9uZSBxdWVzdGlvbiBiZWxvdy4KPiAKPj4gLS0tCj4+ICAgYXJjaC9h
cm02NC9ib290L2R0cy9xY29tL3FjczYxNS1yaWRlLmR0cyB8IDE2ICsrKysrKysrKysrKysrKysK
Pj4gICAxIGZpbGUgY2hhbmdlZCwgMTYgaW5zZXJ0aW9ucygrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEv
YXJjaC9hcm02NC9ib290L2R0cy9xY29tL3FjczYxNS1yaWRlLmR0cyBiL2FyY2gvYXJtNjQvYm9v
dC9kdHMvcWNvbS9xY3M2MTUtcmlkZS5kdHMKPj4gaW5kZXggZWU2Y2FiMzkyNGE2Li43OTYzNDY0
NjM1MGIgMTAwNjQ0Cj4+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9xY3M2MTUtcmlk
ZS5kdHMKPj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3FjczYxNS1yaWRlLmR0cwo+
PiBAQCAtMjE0LDYgKzIxNCwyMiBAQCAmdWFydDAgewo+PiAgIAlzdGF0dXMgPSAib2theSI7Cj4+
ICAgfTsKPj4gICAKPj4gKyZ1ZnNfbWVtX2hjIHsKPiAKPiBObyAncmVzZXQtZ3Bpb3MnIHRvIHJl
c2V0IHRoZSBVRlMgZGV2aWNlPwpJIHdpbGwgY2hlY2sgaXQsIGFuZCBmaXggaXQgbmV4dCB2ZXJz
aW9uLgo+IAo+IC0gTWFuaQo+IAoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBo
eUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXBoeQo=
