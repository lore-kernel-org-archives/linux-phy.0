Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E044C636CC
	for <linux-phy@archiver.kernel.org>; Mon, 20 Feb 2023 13:48:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q+ya6HxZBTozFbExOA68KFlfJkgXYKwFFWCpKc47DOI=; b=qqnBcOP+rRKEui
	+jhshtkG8MBY/K3aaCXeOws+MirBrL1jjTDvpMM9YQ7dJNjawPG2SOjALpDZgIYb94XcEhB7+cHhD
	c7JVrDbY2v9r7u05Z2SiOWr9PQYYQNTxK+HxbSME5IjUveiBgj4XvgkyRy0JO346FDUSh2DnUz/p3
	dXR7ppuIIsBssHFDlIJeST6VBoN5uS2eQwHT9x3qjQie60Q1uCUeJ/Zy2qZkX3ERkcyIycqVSUMab
	778hCJ6vLMxLE5ZRHjlZaEpxw+jChP5jtkNOmM7m+fm33PW52piw3rWhPGJA8ZdKm6OP4Cjf/lqOY
	m1kiEhWcIjNVD6y2tp5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pU6X4-004EGP-Ry; Mon, 20 Feb 2023 13:48:42 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pU6X1-004EFW-VE
	for linux-phy@lists.infradead.org; Mon, 20 Feb 2023 13:48:41 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 31KCEMj2006715;
	Mon, 20 Feb 2023 13:48:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=ORSU/Kgrr5YXCnp8lyw5sWPwL7mXbpJ3GoH/DEN7i44=;
 b=p3qOn7D/rpccX+D2Qv2gOgr2XXdtpcSFzBTGi6gTa1/Tz5BN7ZYnE/yKhBMuJ1QjY0Hb
 CXxikNM0i54V2SOq2XHhzphBiFWrgEWyw9+99ZSPPyKN2NGl5NLTrNo3P3OcuZcmDnBW
 LSgAzzCfCzG9S74ey0RCmfCiJg/lkHVC03jnR99i24zlZ6jIamNu7Fv7O8/aqOiQjUil
 3T0O2PpKtplWxiZPhMVfOui0kU68I8EOcDsp4a5pTkx/fVYJbMp6VXY44Fb8JVlZdJot
 VNC5nTmscRuHo6uXCeFXYoqfA7M09z802f8QrOLz6t5gT0gZ8K6jutCAzXgnD1RoxT2Q mQ== 
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3ntp98d916-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 20 Feb 2023 13:48:33 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 31KDmWXQ014742
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 20 Feb 2023 13:48:32 GMT
Received: from [10.216.11.20] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.41; Mon, 20 Feb
 2023 05:48:24 -0800
Message-ID: <989e460a-b92c-e056-75e5-4e2d36885ac3@quicinc.com>
Date: Mon, 20 Feb 2023 19:18:21 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH 0/7] Add PCIe support for IPQ9574
Content-Language: en-US
To: Sricharan Ramabadhran <quic_srichara@quicinc.com>, <agross@kernel.org>,
        <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <lpieralisi@kernel.org>, <kw@linux.com>, <robh@kernel.org>,
        <bhelgaas@google.com>, <krzysztof.kozlowski+dt@linaro.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <mturquette@baylibre.com>,
        <sboyd@kernel.org>, <mani@kernel.org>, <p.zabel@pengutronix.de>,
        <linux-arm-msm@vger.kernel.org>, <linux-pci@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <linux-clk@vger.kernel.org>
CC: <quic_gokulsri@quicinc.com>, <quic_sjaganat@quicinc.com>,
        <quic_kathirav@quicinc.com>, <quic_arajkuma@quicinc.com>,
        <quic_anusha@quicinc.com>
References: <20230214164135.17039-1-quic_devipriy@quicinc.com>
 <a987fc17-3924-7ece-59e2-3fa1d000afc1@quicinc.com>
From: Devi Priya <quic_devipriy@quicinc.com>
In-Reply-To: <a987fc17-3924-7ece-59e2-3fa1d000afc1@quicinc.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: RcJZbM2r-nlb2Q96w9jR_KwfenFL0kh4
X-Proofpoint-ORIG-GUID: RcJZbM2r-nlb2Q96w9jR_KwfenFL0kh4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.930,Hydra:6.0.562,FMLib:17.11.170.22
 definitions=2023-02-20_11,2023-02-20_02,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=755 mlxscore=0
 adultscore=0 priorityscore=1501 malwarescore=0 suspectscore=0
 lowpriorityscore=0 bulkscore=0 clxscore=1015 impostorscore=0 spamscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2302200125
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230220_054840_150333_AB7BF99E 
X-CRM114-Status: GOOD (  10.77  )
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

CgpPbiAyLzE3LzIwMjMgMjoxOCBQTSwgU3JpY2hhcmFuIFJhbWFiYWRocmFuIHdyb3RlOgo+IAo+
IAo+IE9uIDIvMTQvMjAyMyAxMDoxMSBQTSwgRGV2aSBQcml5YSB3cm90ZToKPj4gUENJZTAsIFBD
SWUxLCBQQ0llMiwgUENJZTMgKGFuZCBjb3JyZXNwb25kaW5nIFBIWSkgZGV2aWNlcwo+PiBhcmUg
Zm91bmQgb24gSVBROTU3NCBwbGF0Zm9ybS4gVGhlIFBDSWUwICYgUENJZTEgYXJlIDEtbGFuZQo+
PiBHZW4zIGhvc3Qgd2hlcmVhcyBQQ0llMiAmIFBDSWUzIGFyZSAyLWxhbmUgR2VuMyBob3N0Lgo+
Pgo+PiBUaGlzIHNlcmllcyBhZGRzIHN1cHBvcnQgZm9yIGVuYWJsaW5nIHRoZSBzYW1lCj4+Cj4g
Cj4gCj4gPHN2YXJiYW5vdkBtbS1zb2wuY29tPsKgIC0tPiBUaGlzIGlzIGJvdW5jaW5nLCBwbGVh
c2UgcmVtb3ZlIGl0Cj4gClN1cmUsIG9rYXkKCj4gUmVnYXJkcywKPiAgwqBTcmljaGFyYW4KCkJl
c3QgUmVnYXJkcywKRGV2aSBQcml5YQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgt
cGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcGh5Cg==
