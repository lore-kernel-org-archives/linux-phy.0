Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C168D74963
	for <linux-phy@archiver.kernel.org>; Wed, 30 Oct 2024 05:55:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:CC:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nJ0heoOmldqH8XktwKNpnvlwNUYS3b4tZcctWsZHeKE=; b=X1qyFJ3zV2I80b
	dw+U657+hO+/EPogM5C0e6OcmfPJ/zcbxWfDGebfss62cyGwZ+D4xu2zZ9LLytYZpRdFXFFDhmGUL
	uO7beSXknYXT4Cm2UEqgNelp0mzXSBdJPRGpvImRyyTp0wuvomagscLbzgPrS1Mga4sIgnHQqSK8e
	HaK9pPNop/TFG5Anvm9au+fXQ+62fGck+7sYoKyi93vceXzBkUDUBdcXGDjG00fYfFqdEEwSOR01q
	GaTscMYmeJukIBnCEBAxh/d5W/77i4uHcGb0VHszBnZvfpDEsOcjpSMNhEnOIp84zxqsNoYcvqXzK
	a4vX9LcIZMY3LEiY+Bxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t61fy-0000000GpQn-3GoJ;
	Wed, 30 Oct 2024 05:55:26 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t61fu-0000000GpQ8-48Pp
	for linux-phy@lists.infradead.org;
	Wed, 30 Oct 2024 05:55:24 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49TLjetW025437;
	Wed, 30 Oct 2024 05:55:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EdzhGzA2id7A/ZpD+TWeWQODIXZxwAyvIC+fzDbNVrU=; b=kHGcqmDRTeCjoT4b
	r5fNCONUTqK/BQjTXBoZTCLwd2XhTNzbYNN5OGodWzUiv4xjttmChJ2fSkald0r5
	EWH/ijF0P/GDZcvAt60vPTGAOssWU0A3Znro7jH0Kt4Ni+8IitI2SE6IyUrkEDVg
	l81khw2do4GCt7MSmmp/6myN8Ca+hjU1RM50fFyt/NHkfeFHmGEG/HILdT67BXGw
	l6KUw3+IbDmWW7BN6XLfECInnMzcijP/wmJzSK7cr3x5j8600kelk8I7BCfWW+YJ
	Ir3yMib1iTdlXRoY1bRIKdh1QA0S04ys9wWMD/ZSDJrMGiooI3fdC6o2PTVRh2dT
	nVRBSQ==
Received: from nasanppmta04.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42gsq8jsgq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 30 Oct 2024 05:55:08 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA04.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 49U5t7io027161
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 30 Oct 2024 05:55:08 GMT
Received: from [10.239.29.179] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Tue, 29 Oct
 2024 22:55:02 -0700
Message-ID: <250bce05-a095-4eb3-a445-70bbf4366526@quicinc.com>
Date: Wed, 30 Oct 2024 13:54:59 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 6/7] PCI: qcom: Disable ASPM L0s and remove BDF2SID
 mapping config for X1E80100 SoC
From: Qiang Yu <quic_qianyu@quicinc.com>
To: Johan Hovold <johan@kernel.org>
CC: <manivannan.sadhasivam@linaro.org>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <robh@kernel.org>, <andersson@kernel.org>,
        <konradybcio@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <mturquette@baylibre.com>, <sboyd@kernel.org>, <abel.vesa@linaro.org>,
        <quic_msarkar@quicinc.com>, <quic_devipriy@quicinc.com>,
        <dmitry.baryshkov@linaro.org>, <kw@linux.com>, <lpieralisi@kernel.org>,
        <neil.armstrong@linaro.org>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <linux-pci@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-clk@vger.kernel.org>, <johan+linaro@kernel.org>,
        <stable@vger.kernel.org>
References: <20241017030412.265000-1-quic_qianyu@quicinc.com>
 <20241017030412.265000-7-quic_qianyu@quicinc.com>
 <ZxJrUQDGMDw3wI3Q@hovoldconsulting.com>
 <91395c5e-22a0-4117-a4b5-4985284289ab@quicinc.com>
Content-Language: en-US
In-Reply-To: <91395c5e-22a0-4117-a4b5-4985284289ab@quicinc.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: 6otyPrzF45iN6J6U6RMBnPJR0HbuqtmZ
X-Proofpoint-ORIG-GUID: 6otyPrzF45iN6J6U6RMBnPJR0HbuqtmZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 bulkscore=0
 adultscore=0 mlxscore=0 priorityscore=1501 mlxlogscore=659 impostorscore=0
 lowpriorityscore=0 malwarescore=0 clxscore=1015 spamscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2409260000
 definitions=main-2410300045
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241029_225523_054933_8DDF5299 
X-CRM114-Status: GOOD (  15.58  )
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

Ck9uIDEwLzI0LzIwMjQgMjo0MiBQTSwgUWlhbmcgWXUgd3JvdGU6Cj4KPiBPbiAxMC8xOC8yMDI0
IDEwOjA2IFBNLCBKb2hhbiBIb3ZvbGQgd3JvdGU6Cj4+IFBsZWFzZSB1c2UgYSBtb3JlIGNvbmNp
c2Ugc3ViamVjdCAoZS5nLiB0cnkgdG8gc3RheSB3aXRoaW4gNzIgY2hhcnMpCj4+IHRoYW46Cj4+
Cj4+IMKgwqDCoMKgUENJOiBxY29tOiBEaXNhYmxlIEFTUE0gTDBzIGFuZCByZW1vdmUgQkRGMlNJ
RCBtYXBwaW5nIGNvbmZpZyBmb3IgCj4+IFgxRTgwMTAwIFNvQwo+Pgo+PiBIZXJlIHlvdSBjb3Vs
ZCBkcm9wICJTb0MiLCBtYXliZSAiQVNQTSIgYW5kICJjb25maWciIGZvciBleGFtcGxlLgo+Pgo+
PiBPbiBXZWQsIE9jdCAxNiwgMjAyNCBhdCAwODowNDoxMVBNIC0wNzAwLCBRaWFuZyBZdSB3cm90
ZToKPj4+IEN1cnJlbnRseSwgdGhlIGNmZ18xXzlfMCB3aGljaCBpcyBiZWluZyB1c2VkIGZvciBY
MUU4MDEwMCBoYXMgCj4+PiBjb25maWdfc2lkCj4+PiBjYWxsYmFjayBpbiBpdHMgb3BzIGFuZCBk
b2Vzbid0IGRpc2FibGUgQVNQTSBMMHMuIEhvd2V2ZXIsIGFzIHNhbWUgYXMKPj4+IFNDODI4MFgs
IFBDSWUgY29udHJvbGxlcnMgb24gWDFFODAxMDAgYXJlIGNvbm5lY3RlZCB0byBTTU1VdjMsIGhl
bmNlIAo+Pj4gZG9uJ3QKPj4+IG5lZWQgY29uZmlnX3NpZCgpIGNhbGxiYWNrIGFuZCBoYXJkd2Fy
ZSB0ZWFtIGhhcyByZWNvbW1lbmRlZCB0byBkaXNhYmxlCj4+PiBMMHMgYXMgaXQgaXMgYnJva2Vu
IGluIHRoZSBjb250cm9sbGVyLiBIZW5jZSByZXVzZSBjZmdfc2M4MjgweHAgZm9yCj4+PiBYMUU4
MDEwMC4KPj4gU2luY2UgdGhlIHgxZTgwMTAwIGR0c2ksIGxpa2Ugc2M4MjgweHAsIGRvIG5vdCBz
cGVjaWZ5IGFuIGlvbW11LW1hcCwKPj4gdGhhdCBiaXQgaXMgZWZmZWN0aXZlbHkganVzdCBhIGNs
ZWFudXAgYW5kIGFsbCB0aGlzIHBhdGNoIGRvZXMgaXMgdG8KPj4gZGlzYWJsZSBMMHMuCj4+Cj4+
IFBsZWFzZSByZXBocmFzZSB0byBtYWtlIHRoaXMgY2xlYXIuIFRoaXMgd2lsbCBhbHNvIGFsbG93
IHlvdSB0byBtYWtlIHRoZQo+PiBTdWJqZWN0IGV2ZW4gc2hvcnRlciAobm8gbmVlZCB0byBtZW50
aW9uIHRoZSBTSUQgYml0IGluIFN1YmplY3QpLgo+Pgo+PiBBbHNvIHNheSBzb21ldGhpbmcgYWJv
dXQgaG93IEwwcyBpcyBicm9rZW4gc28gdGhhdCBpdCBpcyBtb3JlIGNsZWFyIHdoYXQKPj4gdGhl
IGVmZmVjdCBvZiB0aGlzIHBhdGNoIGlzLiBPbiBzYzgyODB4cCBlbmFibGluZyBMMHMgbGVhZCB0
bwo+PiBjb3JyZWN0YWJsZSBlcnJvcnMgZm9yIGV4YW1wbGUuCj4gTmVlZCBtb3JlIHRpbWUgdG8g
Y29uZmlybSB0aGUgZXhhY3QgcmVhc29uIGFib3V0IGRpc2FibGluZyBMMHMuCj4gV2lsbCB1cGRh
dGUgaWYgZ2V0IGFueSBwcm9ncmVzcwpIaSBKb2hhbiBIb3ZvbGQKCkkgY29uZmlybWVkIHdpdGgg
SFcgdGVhbSBhbmQgU1cgdGVhbS4gTDBzIGlzIG5vdCBzdXBwb3J0ZWQgb24gWDFFODAxMDAsIApp
dCBpcyBub3QgZnVsbHkgdmVyaWZpZWQuIFNvIHdlIGRvbid0IHdhbnQgdG8gZW5hYmxlIGl0LgoK
VGhhbmtzLApRaWFuZyBZdQo+Cj4gVGhhbmtzLAo+IFFpYW5nCj4+Cj4+PiBGaXhlczogNmQwYzM5
MzI0YzVmICgiUENJOiBxY29tOiBBZGQgWDFFODAxMDAgUENJZSBzdXBwb3J0IikKPj4+IENjOiBz
dGFibGVAdmdlci5rZXJuZWwub3JnCj4+IEpvaGFuCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
