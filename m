Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4816AC5DF9C
	for <linux-phy@archiver.kernel.org>; Tue, 25 Aug 2026 03:40:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=M7rqLuc+lV7OvWjHD30gAvw4d6FjNwgt5QdjuFx7FCw=; b=P2Wf4ZURHeA/8j
	Wid51Di2L7lz91SBC4q/gE0qkrJ8rkSIoOa40AlkcfOblQE1UQ6rSNh5nOtjGzFya1jGXMZ+oXOEI
	ONaMjJVR4CLfsBz7vQZnuKrn2J6Iqg98YerPNFOHrEKqMH6So+D4cAjX+fUyzaZZS/w9Gvr7Anotz
	2irhC/plm21oup/3siht4OUtrSKaP3p9ZxJrhlALDBqZ4oSlXBfrbMzNHR+Fxzo+z9ssqZ8pnAakQ
	tyCXzPeOpH8q5ET2ktcUl6Jn70jfGEmgSbZzq2g2cnzb6evRCZECl19L9r5uWewDFc3mDymk86Qx0
	eWW3/gp7l0hcVq07Rrqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyi1g-000000006WR-3IrM;
	Tue, 25 Aug 2026 03:40:40 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyi1d-000000006Vz-08p9
	for linux-phy@lists.infradead.org;
	Tue, 25 Aug 2026 03:40:40 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67P2R5Ig3741449
	for <linux-phy@lists.infradead.org>; Tue, 25 Aug 2026 03:40:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=EdSzuYafGONS0Am+NH3il+
	2M32HWJRjQj8BDLM7qMfw=; b=MsKhtae61WryQuYzE2Agnr8RN2h1adhMWYc35N
	pndzy8cI9B00hzhzFB4bO1xGdOUWpyaGUfARn8fzKdkbRZDW6u+9pWVifesDbSNc
	Wr1Ln1c4KYsw7S/ln4zW2u0yack5zMEVMXLTbksuXyxPd5IqLObWpUzgoq5rpLH/
	nb3RWaQ18ePSwJ7+KUoPvZxyTnjOAcGFoUJ94zesEFG8jIj3xZ5Gd/k9Ex6j/Vzn
	0jvW0T6cAuhqW0xxwB6mN5GnlfE+KcC5KZ7RrzV+rn9OwmqmQ8VZoyN6NaTVPpwu
	bWHMzVCoRcE8hLI7Qgydo5bZQz43SaN+J+9FJvZgp43+Eabg==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g8kv7bswj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 25 Aug 2026 03:40:35 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-39533bb224cso5427885a91.3
        for <linux-phy@lists.infradead.org>; Mon, 24 Aug 2026 20:40:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787629235; x=1788234035; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=EdSzuYafGONS0Am+NH3il+2M32HWJRjQj8BDLM7qMfw=;
        b=RvHQus8yuOlwbfMg2R3ycZ7Wt3PpxI2gBYJ7eOmz9F2JGHIEi8fi6MJ6/3CFQA19xf
         Sj8sKAsc3u4phx0OKkiMbhV1h2yFFVTzmluVXD2iRAMWtRlrV8hp63tk33hFr8G+3QfY
         PcHEz5wHLuP98dO5C5sjxUOs3BKN485ArUQc9bNPhXU3nwL7/cEsyJVecsqeLIqQQ33r
         fof8NG+D4OolnKJq2iy+2MqLmmzenROj1hP0IeLAoWjpb+4mPPElasCMc0iGCv0rKycl
         cWxbrZBEYG/5MuDC3UUdmFpTOeCDCDqs9QivN95E7JAh2pSJNThYET8VMaQsKemHAeeQ
         FiXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787629235; x=1788234035;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=EdSzuYafGONS0Am+NH3il+2M32HWJRjQj8BDLM7qMfw=;
        b=AoCo4quKoIS2DI5GVJL/Mw+Qqyfvwf1aUiW7/G3rqQgMomIXv3YmHEH69Tg39ncEBQ
         L9viwz3P2/9gydFr+i8nbjfKcfvuW9lngRIV83qGUMEI13rNR8N4Lc8wGvkBgUgQIaAg
         JERK4ddlBff96jBzsuQyZK4H4mmDkvjlNsHQRpuz1pcJKKbhngru5hkauzKvv6TpOS1c
         dMYD+0lFnAsnz1hUHIF+WhsGA4xgNFtE42+66I3SFNOYT46p42aKjJzbVTW3c1mnYGs+
         AeP3ZSYaHneqBTRvo2iDxTTKb+FNvFXEN0fMXzZhcmixCDiZJGxzs+K5JG3Y21Uel/82
         jJKA==
X-Forwarded-Encrypted: i=1; AHgh+Rrdt7mk6R/XjsVCrH8U9xEJu+iNJRsvJFg03szNqBROXDbEc0ACate0TWBHRZPtjZW/PrHuXCBkIM0=@lists.infradead.org
X-Gm-Message-State: AFuF++n5BFdmOPMNNu29QDtYb9h1eMkkhlQh4ZZ9fgx1ma/2DFUxLNPW
	6gTO+exEos2fOD4xWVSoacq3obe/k5+8j403o05/qQ7mtlUgbSAIQPxZdq2XO6AKnmWx1c8r8AA
	jft7Z/Gma7U0ndtQJWY/ZkddLShDXz/TpQ4PwppytW9pExHUU43nzRK4sE3J0j/1c0/4U
X-Gm-Gg: AR+sD132skVFHfjs944odXkN6Ohi91Y+mdoHQRY+EgxPHyFoOs61EgupWuMIH18ix8K
	fktz7NpRYswAWHDjuj4z7noGrv6i2ZiPjB09R8M5IQkQRrpTm0zFiBdd0f0RNQG43W9DZ6CM9SE
	DolObAiVYFa+dchnrH2vaOBHMP4B8RJuL6GaLEOyDyr+UdPS8KTBqlevoNbDDK3URA2E0p3HGeK
	6R7rEzYF5bNy7sqgwNISoO6soGCFxMEhikQI1dMrkOOKR5mrdqkFMmSaTbzmqlVrNrQIUzzS2sm
	lBGJOgXeudfbNwIBzC9zscNEQesVLrfXNMVbr7iG7Hyxmiw53uC/sAL+W+cW2sx6noMeBJfDhvS
	yrm1WCcmmCIMudofaihRST9TJFfXbEz2MwY4=
X-Received: by 2002:a17:90b:224a:b0:385:393e:7124 with SMTP id 98e67ed59e1d1-395df677766mr37994676a91.14.1787629235214;
        Mon, 24 Aug 2026 20:40:35 -0700 (PDT)
X-Received: by 2002:a17:90b:224a:b0:385:393e:7124 with SMTP id 98e67ed59e1d1-395df677766mr37994607a91.14.1787629234742;
        Mon, 24 Aug 2026 20:40:34 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-327f91d36f9sm46440083eec.16.2026.08.24.20.40.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Aug 2026 20:40:34 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Subject: [PATCH 0/4] Add PCIe support for Qualcomm Nord platform
Date: Tue, 25 Aug 2026 09:10:21 +0530
Message-Id: <20260825-nord-v1-0-7c02f2b8765a@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAKUOjWoC/y2Nyw6CMBBFf4XM2pI+kIcr/8OwKDBIjbTaAaIh/
 XcLuJnkJOeeWYHQGyS4JCt4XAwZZyOIUwLtoO0dmekig+Qy56XgzDrfsSwXJa960Z01QlRfHnv
 z2TO3+mCamwe207bdjMHQ5Px3/7OIzfsnZXYkF8E4q/KqUUXR8EKpqyNK37N+tm4c03igDiH8A
 F5hWHSxAAAA
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
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1787629229; l=2871;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=ikgtOzxSpmJEr2Vr4iz9UntK5xaE/Y36dBEnPiBcCa0=;
 b=avFVHuaMXIAEXZtr/CJr52BQYBvSUlz+tIenooznuEo5NzsevM8LKP0sDuhG1fR8bCXs2YdNJ
 aHvip3la/HEDzSm2RrN5VRBXAZDwzLOSGvC6onVRrAH0r/tYmYn6wZH
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Authority-Analysis: v=2.4 cv=Cfg4Irrl c=1 sm=1 tr=0 ts=6a8d0eb3 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=1XWaLZrsAAAA:8
 a=P-IC7800AAAA:8 a=JfrnYn6hAAAA:8 a=mkAmWphk72FtIL2ZoEcA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22 a=cvBusfyB2V15izCimMoJ:22
 a=d3PnA9EDa4IxuAV0gXij:22 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwODI1MDAyOCBTYWx0ZWRfX3s+ep78cDuEi
 fawn7/0hONMl63CS4KsaCteX2+EtGGXFwuvwF+SyKH+5HLvSK8L1+UnXz+baDPhFgzSasrLHdit
 iTE9fXa6uPr/mzLHBgri3hsGAO6fAqM=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODI1MDAyOCBTYWx0ZWRfXw56fSONb9UjD
 DqiP2ROcpCRxOLYGrf/9+ec0nQrY668QJVH4r2N0KiL/+6EHYTmQtQ8Pm5Rhup+fzNRjQPdwrL+
 yPo69qaSSMz7V4HOzKdTfufQdWL6CKMmOiyLtjGMOJWcgHSGCa/9pqXRCvNVB/Jge0eWs0DyDAM
 NeJyLBla93vc6BhPgxRIuyDsG9xVMYT8ZTdNqXxO1w9Q5sIQULvI8ocnVDJPXmExLZPz0cPU4Yy
 CuUNKoqNkzUJXGHZPXrmsHC1jgyx8Cy1PNrVHkZd/yOVncGrRs1OiIICqdTVY5KeRc8G4eRdtkM
 CTCEHddf/CdfFBtuPSJQPlcAFNFuSq2ojvcRLVY3mbebT3drIcV5T93BSKnDyiNvozm/ToxozMG
 7skr+5dYN+Fvu2uXkQYm3T0ikVRf9gznGSOOgl097ikau63HGZD0ZTzSziYE2w76Ju9Rje+pGWT
 xvqRKHG1HKzOBMivsaA==
X-Proofpoint-ORIG-GUID: FegHqyWZPNMMJndr4ZO6DflVLBImE8av
X-Proofpoint-GUID: FegHqyWZPNMMJndr4ZO6DflVLBImE8av
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-25_01,2026-08-24_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 impostorscore=0 spamscore=0 suspectscore=0
 priorityscore=1501 malwarescore=0 clxscore=1015 lowpriorityscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2608250028
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_204037_084986_B8502FB8 
X-CRM114-Status: GOOD (  12.60  )
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
QHBlbmd1dHJvbml4LmRlPgpDYzogbGludXgtYXJtLW1zbUB2Z2VyLmtlcm5lbC5vcmcKQ2M6IGxp
bnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCkNjOiBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9y
ZwpDYzogbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZwpDYzogbGludXgtcGNpQHZnZXIua2Vy
bmVsLm9yZwoKLS0tCktyaXNobmEgQ2hhaXRhbnlhIENodW5kcnUgKDQpOgogICAgICBkdC1iaW5k
aW5nczogcGh5OiBxY29tOiBhZGQgTm9yZCBRTVAgUENJZSBQSFkgYmluZGluZwogICAgICBkdC1i
aW5kaW5nczogcGNpOiBxY29tOiBhZGQgTm9yZCBQQ0llIGNvbnRyb2xsZXIgY29tcGF0aWJsZQog
ICAgICBQQ0k6IHFjb206IEFkZCBDR0MgZGlzYWJsZSB3b3JrYXJvdW5kIGZvciBOb3JkIFBDSWUK
ICAgICAgcGh5OiBxY29tOiBxbXAtcGNpZTogQWRkIE5vcmQgR2VuNXgxNiBQQ0llIG11bHRpLVBI
WSBzdXBwb3J0CgogLi4uL2RldmljZXRyZWUvYmluZGluZ3MvcGNpL3Fjb20scGNpZS1zYTg3NzVw
LnlhbWwgfCAgICAxICsKIC4uLi9iaW5kaW5ncy9waHkvcWNvbSxub3JkLXFtcC1wY2llLXBoeS55
YW1sICAgICAgIHwgIDI3NiArKysrKwogZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1x
Y29tLmMgICAgICAgICAgICAgfCAgIDE2ICsKIGRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29t
LXFtcC1wY2llLW11bHRpcGh5LmMgIHwgMTA3NyArKysrKysrKysrKysrKysrKysrLQogZHJpdmVy
cy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXBjcy1wY2llLXY2XzQwLmggfCAgIDU2ICsKIGRy
aXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1wY3MtdjZfNDAuaCAgICAgIHwgICAxNCAr
CiAuLi4vcXVhbGNvbW0vcGh5LXFjb20tcW1wLXFzZXJkZXMtY29tLXBjaWUtdjZfNDAuaCB8ICAg
OTQgKysKIC4uLi9waHktcWNvbS1xbXAtcXNlcmRlcy10eHJ4ei1wY2llLXY2XzQwLmggICAgICAg
IHwgIDE5NCArKysrCiA4IGZpbGVzIGNoYW5nZWQsIDE2ODggaW5zZXJ0aW9ucygrKSwgNDAgZGVs
ZXRpb25zKC0pCi0tLQpiYXNlLWNvbW1pdDogYzc2YmI2ZWQxM2QzYzdkY2QxYWIzYjI0ODI5OWM1
YTZmMTQ2MGVjNApjaGFuZ2UtaWQ6IDIwMjYwODEwLW5vcmQtNDYxODA5ZjFkNWFlCgpCZXN0IHJl
Z2FyZHMsCi0tICAKS3Jpc2huYSBDaGFpdGFueWEgQ2h1bmRydSA8a3Jpc2huYS5jaHVuZHJ1QG9z
cy5xdWFsY29tbS5jb20+CgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
