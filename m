Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D9C5C982F0
	for <linux-phy@archiver.kernel.org>; Mon, 21 Sep 2026 05:37:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BqJpkAMzdwdWDiC0QKl0Ngylh53DVJFrZn75CJW9/jo=; b=hqojHKtOIAMKMQ
	vQhjgUWLcB2AEOGAxqPc9X/XfgGesu177kaqJpX/QRHqVpcGwtIAZyz2Rgz6FI/UGpkL94VgbMgDT
	hBHqiXxQerbUxH5lnHCmgR9Wo5IjhWCx1oCkzGktFhhGCM/DG9Z89mIzI9nNPBjKZ0uC8TnD2oMah
	j343WrRkwsOwx2Njm3Saj5Io6wLjalfQ6+DEmAWFuy7NfidBFCkPT8/7u8HRpdBO5xTs/qylueShe
	oTgytNhb+jMVb913z80HOIUhRpss0LkJwOEIkRM0052PC9CwYjf0yVS2Qt/hvd4B28fp7tr3blnd+
	D/N7OxznhaPMXnEk3b7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8WiT-00000000wKF-2fI0;
	Mon, 21 Sep 2026 05:37:25 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8WiR-00000000wJh-0Ctp
	for linux-phy@lists.infradead.org;
	Mon, 21 Sep 2026 05:37:24 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68L3YtBE142170
	for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 05:37:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=jFaEBWUFf1wNsYWOuTWbsW
	2vcMd0ik36yK685CRq5/E=; b=dwTba8zlpfJGt8JpiyeXQ3QROu1dKkrtM4Tspc
	PRCOh4Jv5eZwpRYgVkyRw+xP+DcXSW3HWNe5rzKuy6oxmSBs3qARBbgTGvb20Acw
	Bm6ZGXloB/qyjxfeDd+w9HigNYUAg7T3YlEA2YJ6I2VDT7nAto9kQIOzaQhlsNDa
	92tYDbHnrFeIcH8HIObfGpvu7v4sUVr0zyEdA9yElCPWLaFrq0OtME6q94xYtuZ9
	H5hcfnZf/PHJQBL1azm7aBS2PPycJyo588+JVstcK6xDEWGNsx0MVeBIIIWAa/fr
	uK3RcXltT4hSDcOgQpxaWhbMUXooXvZVQnWxXh1pmlTHT1LQ==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gtu1egneu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 05:37:21 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-39e18af9f48so4028363a91.1
        for <linux-phy@lists.infradead.org>; Sun, 20 Sep 2026 22:37:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789969041; x=1790573841; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=jFaEBWUFf1wNsYWOuTWbsW2vcMd0ik36yK685CRq5/E=;
        b=dyp3VKpTFIPt8XTql5/i08xjyYN03rbJT2NoiiXx9KjtESq0+Pt8yaqes+CV9sx7V9
         0ejlCvZBMTFxv1cs8qoCqjYRA200QE/bKMMg1ZUQQ8LpBEcwdCzIFfjT9ocuwMbt9ZQG
         7mBtEIcrjOGYbAc99FpGcVljxEXWEuNNcgJnDMLRCdWaLrF7lLlQaAlGjrknmbONf/7m
         txIEimD5yGQhHpf6avndGyJCfNM61ikTyYq0TJ8H8EpaL9QJPvJkiikoaiNPliEiIOJe
         3PgSapbgt5KRhOb7x6BRuGAbAJcyjnQlMhAh+mF2hWGj8aBV8Bc+nyrsxcLLSuryvAzA
         18eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789969041; x=1790573841;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=jFaEBWUFf1wNsYWOuTWbsW2vcMd0ik36yK685CRq5/E=;
        b=GpPzXaBU6IYuG99N+MN+F992JSPG2S09VbtBLVcN9iqZzFthb8FCsXbqafDeC5y71Y
         ziGQexuqA/FusUqRO/ssygSbGzmtqjDpSwmDDjFRJUGTcDvupqWS2Mfk1MpGTYBLCmXX
         PLgK30GVVW+/piQnFnJrM7e2KutINfCAtB7Cdfy+tcpwf56cNcTwvfaZsIyMiwNjxKtO
         iJVrCotVzBuOes2jus4/sGqRGCR4q1f5A/k6yY6B/0yVFBwHBVIJmUU+D6C5bD6MI991
         kKaFXmT+RjBeTdLwrN9a1yU5ZKiFqU84ncgTGB6aEh7DJwejIr0SZe3F/AUaCze6EccJ
         67BA==
X-Forwarded-Encrypted: i=1; AKwUvBxcgy2TiYcdrSrujK4MhyISkmwZUNspaunwHFX3yvyxx6pgDWC3iqPSX4fcgbZTTUjB70rgpcjEiH4=@lists.infradead.org
X-Gm-Message-State: AFuF++nuLIdxTiRJ3i1MbjM9Nl8Gy5bVt2exHQn1Wm7gElRbbervhsUZ
	TKJK7XKv1ct8r2T58QIsHXjbMJeWJDusHl89x1umlklDILfU12AAIiADzOI+NyB4y1NeOsYSzsW
	YewqlvYdE2eZ5foLKfibY/pIlOuqb5NOUYo9c2XmovDqUyfc/3tzGPIdSdgrClGFtIiiZ
X-Gm-Gg: AYBFou0TRQqyqbbZ/GrbQnB5WExYoyRhSlK+U5kfp+rBq03C1/WVNWOPGU9FoiKHnFj
	1qnfKeiI3qy8VYaWlChENh7fpCTkr/61kUEqje7bRwSIiWUazGkhDzCOZ/MXr9sk84SYh0ZnzVc
	1kEDpFuY9Q2SnXVJOoi6G91g+VU0m0eMYNVi2fpVskCOTvLZp4luzfCz+97HPtLQDLufHNWg3KY
	S45dkf1XhJlMactsBGhN2SiXxuj0fIAUNmGxzhPAGWu2ZmQpTw0s8l4Ogj4WKiJmgz+lMmsSjX6
	E4MfhAzxiNRkItfS0Ek6e84c/eRDjK27OCEC6gRigrsgmujHN6o7MOUs/ANXPlF580/tInWw2UE
	7tvBXDUSXNO6Le4jNDpsYxvpJhzbpBCgpHA==
X-Received: by 2002:a17:90b:4b87:b0:39e:6c68:fd8f with SMTP id 98e67ed59e1d1-39e6c68ff16mr6329932a91.36.1789969041231;
        Sun, 20 Sep 2026 22:37:21 -0700 (PDT)
X-Received: by 2002:a17:90b:4b87:b0:39e:6c68:fd8f with SMTP id 98e67ed59e1d1-39e6c68ff16mr6329899a91.36.1789969040772;
        Sun, 20 Sep 2026 22:37:20 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-144d55d45a6sm15054568c88.9.2026.09.20.22.37.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Sep 2026 22:37:20 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Subject: [PATCH v4 0/6] Add PCIe support for Qualcomm Nord platform
Date: Mon, 21 Sep 2026 11:07:08 +0530
Message-Id: <20260921-nord-v4-0-ed05c6e09240@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAIXCsGoC/3XOy2oCMRgF4FeRrI38SSY3V32P4iLXmqKTNtHBI
 vPuTXRAwXYTOHC+8+eKaigpVLRdXVEJU6opjy0M6xVyezN+BJx8y4gCFaAI4DEXjwdBFOhIPDc
 BtepXCTFdbjPvu3uuZ/sZ3Knb3tinesrl53ZnIr23TNLhPjkRDFgLbZmUFiRjb7nWzffZHFw+H
 jft6TOL4U9GOqCRWiUFN6+m/2aiz/fUYmmzRNnItSfai/iPZQ+rQS+WNWvBKCopcXyQf9h5nn8
 BWJNHaF0BAAA=
X-Change-ID: 20260810-nord-461809f1d5ae
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        shengchao.guo@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789969033; l=4478;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=9U2el7qhXi1CczJc0aDnMlryL3xXkou20Zt0ZP5PomI=;
 b=78vCJBSTEURDNOvkYHZEXlJYGdromKpI6vIQXnjl6Xu8QFsO0A/bb6W6x7MCwiL1vrGqD3pqE
 0JWiKma9RVZCx6bEne6OR7fH7t9/KZzpdZwONI+F9uIuJqBqrsmOduh
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTIxMDA3OCBTYWx0ZWRfX8qdQgb7lPwQp
 ym0FcbrsfzjY7X0OjX9vs1nZmlprzfeFNdZ/9s4FNj6N8ZpzxTGyX9AkFRBnOMAjlAmoK4qEOC+
 10uVaL+UO6KOyFkJOAEOLHyWVUnS8P4=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTIxMDA3OCBTYWx0ZWRfX6SwgO6Rc7JLL
 j621PAi3lCXL1IGD4RWR4e7BmIz4CrnSpwyknUQ+4mnhrpKZKfvlrbi/pq8ee4fK7aJ+fFfu69k
 MhgTJ7c1qm0ru6IdCc7wUOw2llcnBqCZtWHe5CkG47Ya6xhio+gZ40icglccL4i8GfT96ZoYKOh
 Dlg3IJTNndcEQSGoN9m9eWgR7CUSOsoofYAS8U5iut8qV2/fHkGNrsduz5pRFFyXwCjohF68AmX
 jV++aDLRd+SP2KSSFBGrQhrGefFZGjrfoMYqyYAD7xtMxFU327ZC+s9Qr64Hbd5f2djJgxoio/8
 mc0L9/J9bgoJAoJ1aKBF/3kCkhJDlVxf4+talXBIsYlhpdmv0W7P4gBOoZ9TzYr6qhgQ8wbZfua
 M7bQEoO3GCO/ysmKt2D9GusWOLpXsCiyrakjnj2p9WgIODPTgbp5sDyurgJhyS8Kqb+SpKjA+b+
 xWaVYwRc2kMOjfnBWLw==
X-Proofpoint-ORIG-GUID: ZQFhgL02kjH4JV2_o9SkUOvZdJ0Oheq4
X-Proofpoint-GUID: ZQFhgL02kjH4JV2_o9SkUOvZdJ0Oheq4
X-Authority-Analysis: v=2.4 cv=A6r5rKWG c=1 sm=1 tr=0 ts=6ab0c291 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=bC-a23v3AAAA:8 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8
 a=1XWaLZrsAAAA:8 a=P-IC7800AAAA:8 a=JfrnYn6hAAAA:8 a=uxWjj-y4xJQSND-wKXoA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
 a=FO4_E8m0qiDe52t0p3_H:22 a=cvBusfyB2V15izCimMoJ:22 a=d3PnA9EDa4IxuAV0gXij:22
 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-21_02,2026-09-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 suspectscore=0 malwarescore=0 lowpriorityscore=0
 priorityscore=1501 adultscore=0 bulkscore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609210078
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260920_223723_109028_C33239D8 
X-CRM114-Status: GOOD (  15.51  )
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

VGhpcyBzZXJpZXMgYWRkcyBQQ0llIHN1cHBvcnQgZm9yIHRoZSBRdWFsY29tbSBOb3JkIChTQTg3
OTdQKSBwbGF0Zm9ybS4KCk5vcmQgaGFzIGEgc2luZ2xlIEdlbjUtY2FwYWJsZSBRTVAgUENJZSBQ
SFkgYmxvY2sgc3BsaXQgaW50byBmb3VyCmluZGVwZW5kZW50bHktY2xvY2tlZCBhbmQgaW5kZXBl
bmRlbnRseS1yZXNldHRhYmxlIHBvcnRzIChBL0IvQy9EKS4KRmlybXdhcmUgc2VsZWN0cyB0aGUg
YWN0aXZlIGxhbmUgdG9wb2xvZ3kgYXQgYm9vdCB2aWEgYSBUQ1NSCmNvbmZpZ3VyYXRpb24gcmVn
aXN0ZXIsIGFuZCB0aGUgc2FtZSBQSFkgYmxvY2sgY2FuIGFwcGVhciBhcyBhIHNpbmdsZQp4MTYg
cG9ydCwgeDgreDgsIHg4K3g0K3g0LCBvciB4OCt4NCt4Mit4MiBkZXBlbmRpbmcgb24gdGhhdCBt
b2RlLiBUaGlzCmlzIHNpbWlsYXIgaW4gc3Bpcml0IHRvIHRoZSBHbHltdXIgbXVsdGktUEhZIHN1
cHBvcnQgYWxyZWFkeSBwb3N0ZWQsCmV4Y2VwdCBOb3JkJ3MgUEhZIHJlZ2lzdGVycyBhcmUgcHJv
Z3JhbW1lZCBieSBMaW51eCByYXRoZXIgdGhhbiBieQpmaXJtd2FyZSwgc28gdGhpcyBzZXJpZXMg
YWRkcyB0aGUgUExMLCBUWFJYWiwgUENTIGFuZCBQQ1MtbGFuZSBpbml0CnRhYmxlcyBhbG9uZyB3
aXRoIHRoZSBwb3dlci11cC9wb3dlci1kb3duL3NvZnQtcmVzZXQgc2VxdWVuY2luZyBuZWVkZWQK
dG8gYnJpbmcgZWFjaCBwb3J0IHVwLgoKVGhlIHNlcmllcyBhbHNvIGRvY3VtZW50cyBhbmQgd2ly
ZXMgdXAgdGhlIHFjb20sbm9yZC1wY2llIGNvbXBhdGlibGUKKHJldXNpbmcgdGhlIGV4aXN0aW5n
IFNBODc3NVAgUENJZSBjb250cm9sbGVyIGJpbmRpbmcpLCBhbmQgYWRkcyBhCkNPUkVfQ0xLX0NH
Q19ESVMvQVVYX1BXUl9ERVQgd29ya2Fyb3VuZCByZXF1aXJlZCB0byBhdm9pZCBhIHRpbWluZwpj
b252ZXJnZW5jZSBpc3N1ZSBpbiB0aGUgUENJZSBwb3dlciBkb21haW4uCgpTaWduZWQtb2ZmLWJ5
OiBLcmlzaG5hIENoYWl0YW55YSBDaHVuZHJ1IDxrcmlzaG5hLmNodW5kcnVAb3NzLnF1YWxjb21t
LmNvbT4KLS0tClRvOiBWaW5vZCBLb3VsIDx2a291bEBrZXJuZWwub3JnPgpUbzogTmVpbCBBcm1z
dHJvbmcgPG5laWwuYXJtc3Ryb25nQGxpbmFyby5vcmc+ClRvOiBSb2IgSGVycmluZyA8cm9iaEBr
ZXJuZWwub3JnPgpUbzogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6aytkdEBrZXJuZWwub3JnPgpU
bzogQ29ub3IgRG9vbGV5IDxjb25vcitkdEBrZXJuZWwub3JnPgpUbzogQ2hhaXRhbnlhIENodW5k
cnUgPGtyaXNobmEuY2h1bmRydUBvc3MucXVhbGNvbW0uY29tPgpUbzogTG9yZW56byBQaWVyYWxp
c2kgPGxwaWVyYWxpc2lAa2VybmVsLm9yZz4KVG86IEtyenlzenRvZiBXaWxjennFhHNraSA8a3dp
bGN6eW5za2lAa2VybmVsLm9yZz4KVG86IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaUBrZXJu
ZWwub3JnPgpUbzogQmpvcm4gSGVsZ2FhcyA8YmhlbGdhYXNAZ29vZ2xlLmNvbT4KVG86IEJqb3Ju
IEFuZGVyc3NvbiA8YW5kZXJzc29uQGtlcm5lbC5vcmc+ClRvOiBNYXhpbWUgQ2hldmFsbGllciA8
bWF4aW1lLmNoZXZhbGxpZXJAYm9vdGxpbi5jb20+ClRvOiBQaGlsaXBwIFphYmVsIDxwLnphYmVs
QHBlbmd1dHJvbml4LmRlPgpDYzogc2hlbmdjaGFvLmd1b0Bvc3MucXVhbGNvbW0uY29tCkNjOiBs
aW51eC1hcm0tbXNtQHZnZXIua2VybmVsLm9yZwpDYzogbGludXgtcGh5QGxpc3RzLmluZnJhZGVh
ZC5vcmcKQ2M6IGRldmljZXRyZWVAdmdlci5rZXJuZWwub3JnCkNjOiBsaW51eC1rZXJuZWxAdmdl
ci5rZXJuZWwub3JnCkNjOiBsaW51eC1wY2lAdmdlci5rZXJuZWwub3JnCkNjOiBzaGVuZ2NoYW8u
Z3VvQG9zcy5xdWFsY29tbS5jb20KCi0tLQpDaGFuZ2VzIGluIHY0OgotIENvdXBsZSBvZiBuaXRz
IGluIGR0IGJpbmRpbmcgJiBwaHkgZHJpdmVyIChzaGF3biwgTWFuaSkKLSBBZGQgcHJvcGVyIGRl
c2NyaXB0aW9uIGZvciBsaW5rLW1vZGUgJiBwaHktY2VsbHMKLSBSZW1vdmUgc29jIG5vZGUgYW5k
IGFkZHJlc3MgY2VsbHMgZnJvbSBleGFtcGxlIChNYW5pKQotIGNoYW5nZSBjZ2NfZGlzX3dvcmth
cm91bmQgdG8gZGlzYWJsZV9jZ2MgKE1hbmkpCi0gU3BsaXQgY29tbW9uIGNoYW5nZXMgYW5kIG5v
cmQgY2hhbmdlcyAoTWFuaSkgCi0gTGluayB0byB2MzogaHR0cHM6Ly9wYXRjaC5tc2dpZC5saW5r
LzIwMjYwOTA5LW5vcmQtdjMtMC1iMGE4MjcyMWM1NDdAb3NzLnF1YWxjb21tLmNvbQoKQ2hhbmdl
cyBpbiB2MzoKLSBjaGFuZ2UgdGhlIG5hbWUgdG8gcXVhZGZ1cmNhdGVkIHBoeSAoS29ucmFkKS4K
LSByZW1vdmUgbWluIGl0ZW1zIGFuZCBjaGFuZ2UgY2xvY2tzIG9yZGVyIChLcnp5c3p0b2YpLgot
IEZhY3RvciBvdXQgdGhlIGNvbW1vbiBjb25maWcgYW5kIGNyZWF0ZSBvdmVybGF5cyAmIHRyeSB0
byB1c2UgY29tbW9uCiAgc3ltYm9scyBmb3IgZ2x5bXVyIGFuZCBub3JkIChLb25yYWQpLgotIGNy
ZWF0ZSAgcXBoeV9zZXRiaXQgYW5kIHFwaHlfY2xyYml0IChRaWFuZyBZdSkuCi0gYW5kIGluIHFt
cF9wY2llX2V4aXQoKSBhcHBseSBzZXR0aW5ncyBvbmx5IHdoZW4gbm9jc3IgaXMgcHJlc2VudCAo
UWlhbmcgWXUpLgotIExpbmsgdG8gdjI6IGh0dHBzOi8vcGF0Y2gubXNnaWQubGluay8yMDI2MDgy
OC1ub3JkLXYyLTAtMThiZjU5ZDE5ZDZmQG9zcy5xdWFsY29tbS5jb20KCkNoYW5nZXMgaW4gdjI6
Ci0gRml4IGR0YmluZGluZyBlcnJvcnMgKEtyenlzenRvZikKLSBMaW5rIHRvIHYxOiBodHRwczov
L3BhdGNoLm1zZ2lkLmxpbmsvMjAyNjA4MjUtbm9yZC12MS0wLTdjMDJmMmI4NzY1YUBvc3MucXVh
bGNvbW0uY29tCgotLS0KS3Jpc2huYSBDaGFpdGFueWEgQ2h1bmRydSAoNik6CiAgICAgIGR0LWJp
bmRpbmdzOiBwaHk6IHFjb206IGFkZCBOb3JkIFFNUCBQQ0llIFBIWSBiaW5kaW5nCiAgICAgIGR0
LWJpbmRpbmdzOiBwY2k6IHFjb206IGFkZCBOb3JkIFBDSWUgY29udHJvbGxlciBjb21wYXRpYmxl
CiAgICAgIFBDSTogcWNvbTogQWRkIE5vcmQgUENJZSBjb250cm9sbGVyIHN1cHBvcnQKICAgICAg
cGh5OiBxY29tOiBxbXA6IE1vdmUgcXBoeV9zZXRiaXRzL2NscmJpdHMvY2hlY2tiaXRzIHRvIGNv
bW1vbiBoZWFkZXIKICAgICAgcGh5OiBxY29tOiBxbXAtcGNpZTogUmVmYWN0b3IgY29tbW9uIG11
bHRpcGh5IGhhbmRsaW5nCiAgICAgIHBoeTogcWNvbTogcW1wLXBjaWU6IEFkZCBOb3JkIEdlbjV4
MTYgUENJZSBtdWx0aS1QSFkgc3VwcG9ydAoKIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9x
Y29tLHBjaWUtc2E4Nzc1cC55YW1sIHwgICAxICsKIC4uLi9waHkvcWNvbSxub3JkLXFtcC1nZW41
eDE2LXBjaWUtcGh5LnlhbWwgICAgICAgIHwgMjY3ICsrKysrKwogZHJpdmVycy9wY2kvY29udHJv
bGxlci9kd2MvcGNpZS1xY29tLmMgICAgICAgICAgICAgfCAgMTYgKwogZHJpdmVycy9waHkvcXVh
bGNvbW0vcGh5LXFjb20tcW1wLWNvbWJvLmMgICAgICAgICAgfCAgMjQgLQogZHJpdmVycy9waHkv
cXVhbGNvbW0vcGh5LXFjb20tcW1wLWNvbW1vbi5oICAgICAgICAgfCAgMzIgKwogZHJpdmVycy9w
aHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXBjaWUtbXNtODk5Ni5jICAgfCAgMjQgLQogZHJpdmVy
cy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXBjaWUtbXVsdGlwaHkuYyAgfCA5NzAgKysrKysr
KysrKysrKysrKysrKy0tCiBkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtcGNpZS5j
ICAgICAgICAgICB8ICAzMiAtCiBkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtcGNz
LXBjaWUtdjZfNDAuaCB8ICA1NSArKwogZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1w
LXBjcy12Nl80MC5oICAgICAgfCAgMTQgKwogLi4uL3F1YWxjb21tL3BoeS1xY29tLXFtcC1xc2Vy
ZGVzLWNvbS1wY2llLXY2XzQwLmggfCAgOTQgKysKIC4uLi9waHktcWNvbS1xbXAtcXNlcmRlcy10
eHJ4ei1wY2llLXY2XzQwLmggICAgICAgIHwgMTk0ICsrKysrCiBkcml2ZXJzL3BoeS9xdWFsY29t
bS9waHktcWNvbS1xbXAtdWZzLmMgICAgICAgICAgICB8ICAyNCAtCiBkcml2ZXJzL3BoeS9xdWFs
Y29tbS9waHktcWNvbS1xbXAtdXNiLmMgICAgICAgICAgICB8ICAyNCAtCiBkcml2ZXJzL3BoeS9x
dWFsY29tbS9waHktcWNvbS1xbXAtdXNiYy5jICAgICAgICAgICB8ICAyNCAtCiAxNSBmaWxlcyBj
aGFuZ2VkLCAxNTY2IGluc2VydGlvbnMoKyksIDIyOSBkZWxldGlvbnMoLSkKLS0tCmJhc2UtY29t
bWl0OiA1YWQwNzgxMzlmNjg0ZmExZjAxOGZlMDEzNDgxMmQ0YWExN2ZhNTNmCmNoYW5nZS1pZDog
MjAyNjA4MTAtbm9yZC00NjE4MDlmMWQ1YWUKCkJlc3QgcmVnYXJkcywKLS0gIApLcmlzaG5hIENo
YWl0YW55YSBDaHVuZHJ1IDxrcmlzaG5hLmNodW5kcnVAb3NzLnF1YWxjb21tLmNvbT4KCgotLSAK
bGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
czovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
