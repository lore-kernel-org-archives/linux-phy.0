Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91140CCFA13
	for <linux-phy@archiver.kernel.org>; Mon, 10 Nov 2025 11:58:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N24+bvNX7JRaYJS6dP+NzY59/QX5IU9iZzbWiUe0kSk=; b=heqby0qLwKFMsf
	By5dBYYXsq3c7QC21qqSpjK9/UbFpuzyDOXgk3yqU+wbN2f3KqynQbqmuwW89IOJ26xVdWgKljMcF
	2lucJIIjSu5x/kBl6v/TTnhgflZzmR73TD8pWQMEum18LzvSotd2gYESOgjLf2OK6C0mkKhaaUpAT
	sLOSzneIXiYZIDltX2zo/XgEtfX/paS6xe0dG/gIahstZGzthcO3hCUIVdWYVH3/+74IRVZ7wYza9
	ZMIZ0QPJM7nAJ/8FaNR3BaRlW7B5EUJYwA7KAqsoHAKacVPu/NbW1FQ6z3qCqrL8Rl8jK2pT6Hiks
	dI7fwQ5kPTp5Z0yCvfsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIQXT-00000005MhU-1NhE;
	Mon, 10 Nov 2025 11:58:27 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIQXP-00000005Mg5-2IxK
	for linux-phy@lists.infradead.org;
	Mon, 10 Nov 2025 11:58:24 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AA7hKeN2861400;
	Mon, 10 Nov 2025 11:58:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QOsuzTkcwCc31WhhHIsQvafQymL7TXCGhP58LqW2jIA=; b=fCNdzsY57ewGXTie
	6KlTIkhOim/P9/t6lFGY3XkD+RqPNgToBfg7RsP6egNDlWzaWjE8Z6UESJ+iAS80
	mu1QPMhjVKegfD2jwfaaZ46r5U2eT06PTThRs0/ljyx4emXl+GpmX7PGk0f4SDyX
	o1LDg0CLNre00lkRfNz/2zjEsJHloA3AiS0TGHDRzdy6b8cl+B9Pnhi91ImxbuF9
	dIWScYYiMHUI52NVhgJYVpHmYKAoBIg9XKiq6TASjP4PjRr2UK8U3jxbePfBxyE2
	meJaYXVO41r1FrOnypczWS/eOllqbiis36tgGNa4d1jr9rsxQw4rSPG4O6u0B4ul
	RaG6iA==
Received: from apblrppmta01.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4abbwe0u90-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 Nov 2025 11:58:20 +0000 (GMT)
Received: from pps.filterd (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 5AABwHIw023617;
	Mon, 10 Nov 2025 11:58:17 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTPS id 4a9xxkqehn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 Nov 2025 11:58:16 +0000
Received: from APBLRPPMTA01.qualcomm.com (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 5AABwGx8023611;
	Mon, 10 Nov 2025 11:58:16 GMT
Received: from hu-devc-hyd-u22-c.qualcomm.com (hu-amitsi-hyd.qualcomm.com [10.213.97.115])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTPS id 5AABwGcW023610
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 Nov 2025 11:58:16 +0000
Received: by hu-devc-hyd-u22-c.qualcomm.com (Postfix, from userid 4648853)
	id 1653E5A8; Mon, 10 Nov 2025 17:28:16 +0530 (+0530)
From: Amit Singh <quic_amitsi@quicinc.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, vkoul@kernel.org,
        kishon@kernel.org, lumag@kernel.org, neil.armstrong@linaro.org,
        quic_wcheng@quicinc.com
Cc: Amit Singh <quic_amitsi@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_riteshk@quicinc.com,
        quic_rajeevny@quicinc.com, quic_vproddut@quicinc.com
Subject: [PATCH 1/3] dt-bindings: phy: qcom: qmp-combo: add support for vdda-aux regulator
Date: Mon, 10 Nov 2025 17:28:04 +0530
Message-Id: <20251110115806.2379442-2-quic_amitsi@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251110115806.2379442-1-quic_amitsi@quicinc.com>
References: <20251110115806.2379442-1-quic_amitsi@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: XHMpZY9qKoYTVJeDZLIVaJVH__iwJjFl
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEwMDEwNCBTYWx0ZWRfX+vl8MbgflgeU
 vtbYMpzUUWuwR6Fhc4VIIjdxk4iXOcnEAVUI32EZJPm7VcIXdWj0xOZzf6ty/t7xWySRgd1TKjw
 WiR43ZBEzQGRHe6T8jRjoNUjeAp9xZTWzPl/0yzbDMWWfJJv6CPARGCmttVzJ3cEYHOWUG11f1k
 WT4VBEGiORzson/AhHg0ppF6oTwKvsHBXsHZNesuDzoFPvLN+60t1iEPsf1h4HhJ0TfqfWo6Ymo
 It7P/RZQkNhaNw+xS9xPWfqgwrcvJsMDxGwaR02WozcDIOKoHksYtpNfj9Z48js+jfuf3TeiaHx
 X3QHdhhCi6Ug532EyAmQE7I67WVLrGVlstBbX+URCQFFavoqoH/rbHCv5cIAmfB2Ni8AoCx903h
 /aDDe433LC5UPVYetH34zLjFJi20og==
X-Authority-Analysis: v=2.4 cv=GbEaXAXL c=1 sm=1 tr=0 ts=6911d35c cx=c_pps
 a=Ou0eQOY4+eZoSc0qltEV5Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=COk6AnOGAAAA:8 a=8IMiPDtIn6OAJiDpRukA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=TjNXssC_j7lpFel5tvFf:22 a=cPQSjfK2_nFv0Q5t_7PE:22
X-Proofpoint-ORIG-GUID: XHMpZY9qKoYTVJeDZLIVaJVH__iwJjFl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-10_04,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 malwarescore=0 priorityscore=1501 phishscore=0 bulkscore=0
 spamscore=0 adultscore=0 impostorscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511100104
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_035823_702458_DD241B06 
X-CRM114-Status: GOOD (  11.99  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

QWRkIHN1cHBvcnQgZm9yIHRoZSAidmRkYS1hdXgiIHJlZ3VsYXRvciBpbiB0aGUgUU1QIFBIWSBi
aW5kaW5nLCB3aXRoCmFuIGVuYWJsZV9sb2FkIG9mIDM2MDAwIMK1QS4gTWFuYWdpbmcgdGhpcyBh
dXhpbGlhcnkgcmFpbCBpbiB0aGUgZHJpdmVyCmFsbG93cyBwcm9wZXIgcG93ZXIgY29uZmlndXJh
dGlvbiBvbiBwbGF0Zm9ybXMgdGhhdCBwcm92aWRlIHRoZSBzdXBwbHksCmltcHJvdmluZyBQSFkg
c3RhYmlsaXR5LgoKVGhpcyBjaGFuZ2UgaXMgYSBuby1vcCBvbiBwbGF0Zm9ybXMgdGhhdCBkbyBu
b3QgZGVmaW5lIHRoZSAidmRkYS1hdXgiCnJlZ3VsYXRvci4KClNpZ25lZC1vZmYtYnk6IEFtaXQg
U2luZ2ggPHF1aWNfYW1pdHNpQHF1aWNpbmMuY29tPgotLS0KIC4uLi9kZXZpY2V0cmVlL2JpbmRp
bmdzL3BoeS9xY29tLHNjODI4MHhwLXFtcC11c2I0M2RwLXBoeS55YW1sICB8IDIgKysKIDEgZmls
ZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20sc2M4MjgweHAtcW1wLXVzYjQzZHAtcGh5LnlhbWwg
Yi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20sc2M4MjgweHAtcW1w
LXVzYjQzZHAtcGh5LnlhbWwKaW5kZXggYzhiYzUxMmRmMDhiLi45YTkwNTE3MzUzMTQgMTAwNjQ0
Ci0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSxzYzgyODB4
cC1xbXAtdXNiNDNkcC1waHkueWFtbAorKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvcGh5L3Fjb20sc2M4MjgweHAtcW1wLXVzYjQzZHAtcGh5LnlhbWwKQEAgLTU5LDYgKzU5
LDggQEAgcHJvcGVydGllczoKICAgICAgIC0gY29uc3Q6IHBoeQogICAgICAgLSBjb25zdDogY29t
bW9uCiAKKyAgdmRkYS1hdXgtc3VwcGx5OiB0cnVlCisKICAgdmRkYS1waHktc3VwcGx5OiB0cnVl
CiAKICAgdmRkYS1wbGwtc3VwcGx5OiB0cnVlCi0tIAoyLjM0LjEKCgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
