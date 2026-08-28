Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AAB93C61DC6
	for <linux-phy@archiver.kernel.org>; Fri, 28 Aug 2026 08:44:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TfNSWLTnAXxT/+0aQHl8yQSKLyw0i7AHivmjqxU5k7U=; b=a+2VVpUiaRxTkg
	3XMcmlia4HpvTTZ4uz9MgglRkv+swO40qF2ikOtGDFMTe2Pl5VZHdrD05XrZBuHJkfn5hj2AGGV43
	83yBf/uShBlgbBgHNlV0tsr5a2GLcVtKIUtbL3Ub1RxI0Ud94kIK+36DuQZRPVv2sJP99Xm1jmz3H
	2k8x5xrHEM5tLsI+sR58IrJ6lk3sMOQZXzijdNKmKQWaRnz4g7ov582M4pYceWqV9fd8wChMWzDWd
	LVZrGzCFhNRjw+Y4vCsW6vt5blLoNI9KYfuRFWcqHtiIziysjmAMoPmbvzKna8YBPHIDbJe6GZfNX
	PiTY0tijTmE6R4ANJ5fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzsBs-00000005KsW-0TuA;
	Fri, 28 Aug 2026 08:44:00 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzsBo-00000005KrU-0tXE
	for linux-phy@lists.infradead.org;
	Fri, 28 Aug 2026 08:43:58 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67S66xeF2515412
	for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 08:43:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=Z0PYFW43js7S7UiYi1d8R4
	YiJmIx8iYtVRZMJ14WZXY=; b=j46y6+rNkv6KjRxKPyX+1h7DZknrCuGNo0Kso5
	c6tEObIYIkVfixmcnuJZRbEr1MqhOTMsPK4ReQJQMvzGLDyKITw4Rxofxudv85aj
	xKSMAPbS9y/LJzJCXFvRKQgzRirI0bLYcGI8afW/UQM4wY3pCMLUP8KlZDTKhzPR
	YwRYSWzEVyqteZby9UXd0YanFYpEzqlkQKE4FSRCXDAmVVQZzVEa22XeNrTreAic
	tZYQSeX/y7J/chy53RUAP1khlEoZhLzw4ICzMI2BJL74mLo88OKdj5fsYtvNjz5D
	cpsD8HHLuwuJ+gIabvVcEgURH3iONPMfxrG6XV1pd2cNcTYg==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gb47n0raa-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 08:43:53 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-cc1b8088202so866114a12.3
        for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 01:43:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787906633; x=1788511433; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=Z0PYFW43js7S7UiYi1d8R4YiJmIx8iYtVRZMJ14WZXY=;
        b=J3rH2ULTZHYKtQQRsVzUdexLj6OaFx6V3vHWD6Kyp/P2WyTz5Kzm6VPb9kzwrdHykJ
         YBDNrZiwRYV8hXu0sHICSgylQdmXfjeqGZ2aew9R/FEZo1ZMQ0ixPcIJt4qT7MDl6dQ3
         wOJar6bz03NsKxF/fcQvqdvKZBbnK26+7h4OHaPDX2oeAF8rwxfaTRkawRQ/plEo02N5
         obx3iAw+sA/DuiBO9c5iBaLtdFV8Y4zCKWGN76QDUuY6qglAcmcW4pFkJ64EWKfR6nss
         yVSdAV6FbIa+aMLmr0e4ws5XlEPQTACfpDnw0Cu6mqKMlKgwL4WtICpnUQqq9ZjEP3Xl
         L0dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787906633; x=1788511433;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=Z0PYFW43js7S7UiYi1d8R4YiJmIx8iYtVRZMJ14WZXY=;
        b=FjHmBwJyTpy5C7WyvvGP7VdJ4lT60iHolpQcfskaTvryooJJow2bmVXCfP2AGVcHPi
         Frd8MG9mjuje3XgJHMhaH5lDSo/rFoYXi0h1mRQIh5Fbv6sbuilubXUz7Oyq8ZZ4taO1
         A5esJKakHC27zCy4u3KyzygTmO2rV5roPobndpjqLp06mwkXT4kDzS7tWWaENwU7W+Mk
         jHfnvm1ECvIcBfbQAN7mOIMQqi5rYvFZvbLZikd79OlaI6L0sK3RnNYRw3Fgk49IqeOE
         rMijltrKlsw3DkOIu5YZwPg0vuPj58MK+MD95usE2N2wBJln3dr8Z+vMBgoIOUYr/ag7
         4LzQ==
X-Forwarded-Encrypted: i=1; AHgh+RpEW1ZSRw++t09uCDqmc3WSSn6+IoYcW4GS8DsC21bByxqW1nrepbz4zYNEdKfuZfIOOdVEfsH2ChY=@lists.infradead.org
X-Gm-Message-State: AFuF++mXD/obw2KXJd/mzjYT/U/KnIOOfROYLv8J9Z64cRKsCccLnnoU
	I3zFND60oBsxGZ86yKNnoPa4W4EkaRbjH0DAArscAsz1TwmlMRC9O250R55Ui+3aKWzpFKbKFE9
	gkQ38e88tMdFCndy+75qCZvXRJphASz3gg4teqEKBDL8ME0yCTJuvOdoBU0hIbs4bA5HK
X-Gm-Gg: AR+sD13oe+TBXhlIz/R3hQdiWhpwqjrQAa/DGRHhLaqvxDHmJF/qusHHLT/OYfMnXGt
	2vWSaV+2DW1qWC+Ql1ubdyG4m18Gkt1xV7m8ISpYACzNd1qh0JXzISRu9RNWcTmAlO73UJWR6Ne
	sEcE3k01aoDXf3B3jtTozUUArm0dsxSEIzjLuNmtCLQMu1+p3i5jF8pmuYSOnxKhyn25402QYSW
	S39KFrtL/dCFzADkX3bhqb4CKdTnQnfc9ih3e+1L7DYRUotpaztEAj5rW7nRctq6UXjGYwnnGUh
	LiVhJB4672a+xqLjvZiggRck4EK82YJ/J9hEZUdipGGmzN12eqTqOq5Kf1JtdP9GZp2zWj4XAvs
	CFOCfKutxNvNFgKvD1K3a3/vx3H50TmTjQWk=
X-Received: by 2002:a05:6a20:9c13:b0:3cf:a7a5:e310 with SMTP id adf61e73a8af0-3d267b656e9mr12127958637.9.1787906632746;
        Fri, 28 Aug 2026 01:43:52 -0700 (PDT)
X-Received: by 2002:a05:6a20:9c13:b0:3cf:a7a5:e310 with SMTP id adf61e73a8af0-3d267b656e9mr12127876637.9.1787906632314;
        Fri, 28 Aug 2026 01:43:52 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3286f784857sm3673459eec.3.2026.08.28.01.43.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Aug 2026 01:43:51 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Subject: [PATCH v2 0/4] Add PCIe support for Qualcomm Nord platform
Date: Fri, 28 Aug 2026 14:13:34 +0530
Message-Id: <20260828-nord-v2-0-18bf59d19d6f@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIADZKkWoC/2WNwQ6DIBAFf8VwLgZQQXvqfzQeALHSVGlZNW2M/
 15QD0162WSSN7MLAuOtAXROFuTNbMG6IQA7JUh3crgZbJvAiBHGSUkJHpxvcM5pSaqWNoU0KEy
 f3rT2vWWu9c4wqbvRY3TjorMwOv/Z/sw07o4ky/fkTDHBFa9UJoQiIssuDiB9TfKhXd+n4cTM4
 RQ/jtCEtUyVghfy36nXdf0CA+IPcOUAAAA=
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1787906625; l=3019;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=tIwPPb3FEHbFHjDaQ5ESAFuaUuExJUDsggZM58cySkI=;
 b=JEUk8jdqpAVjMnx6k0dgKfpIFjSlX9NiSxeD2+qbk+SjZjFRWPJuDPz7I2ZXvNr+nr/jHcECL
 jZAHHJtdjwuBfkC/ateQOYmBglb5Yqa1x0KMPIAKnkvCh4q/LoXONUZ
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Authority-Analysis: v=2.4 cv=a8YAM0SF c=1 sm=1 tr=0 ts=6a914a49 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=bC-a23v3AAAA:8 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8
 a=1XWaLZrsAAAA:8 a=P-IC7800AAAA:8 a=JfrnYn6hAAAA:8 a=mkAmWphk72FtIL2ZoEcA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
 a=FO4_E8m0qiDe52t0p3_H:22 a=cvBusfyB2V15izCimMoJ:22 a=d3PnA9EDa4IxuAV0gXij:22
 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-ORIG-GUID: 7gsOzPQoRo8T_JtNQ9_KTAgomZXfPDxl
X-Proofpoint-Spam-Info: AW1haW4tMjYwODI4MDA3NCBTYWx0ZWRfX1HvPLuE6yw8w
 YP3QVQF6clqPTzUZRAAhRh7b1lUfAw0CcaqWOwrtgH7RpiAtrGmftN+8yTwPRfH60XcTa02rdEX
 g5kPqEjhGllNt0DlVFxFHt5VRdtj+k4=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODI4MDA3NCBTYWx0ZWRfX6g252z6svTtc
 DIP6Emp9Yk6JiFMwav11sRTIr/UO0wlm6tGa6NBXeK1tvjdzin6r2+YqMziwoQjTFYf1YneU3Gx
 LXF7eZcuKipOZ+ZFg8BJ5TEjDcEJrX+nkz60QzvJgBb78bc4fTDymCuwPbAON0s4QzoDSyLlLGS
 gfIIdwZ8BWHs9KOnLlUQFCq41LAF2Qe054hS4uai4eb4tjOQjoIBgehTt4o5U2Iwxghbcv90hf7
 djODaObuUUOn6bpaX+Xj60iu7eIpiKlQCkcpsiPYXriLelsQ9Jhde48kAQbztmpNjSbDcBboL/2
 veK0W9qYf0v09V/Gg+R8Rsoojr/CC1q60Gxa0mpNPLcmnU06/e59uqUrG69OwSh7Ih+Crnz7ea7
 0IIHB0Mf1DoiWhEWWlvhxEGMfrHRzeXl/M8TWLHlciTPdu+GgBZe40JfX9RK6kRyGAt1iwy7R+b
 QpcZjrYFbM3rjPd0LGQ==
X-Proofpoint-GUID: 7gsOzPQoRo8T_JtNQ9_KTAgomZXfPDxl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-28_02,2026-08-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 impostorscore=0 lowpriorityscore=0 bulkscore=0
 spamscore=0 malwarescore=0 priorityscore=1501 suspectscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608280074
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260828_014356_366399_BC877BCC 
X-CRM114-Status: GOOD (  13.28  )
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
bmVsLm9yZwoKLS0tCkNoYW5nZXMgaW4gdjI6Ci0gRml4IGR0YmluZGluZyBlcnJvcnMgKEtyenlz
enRvZikKLSBMaW5rIHRvIHYxOiBodHRwczovL3BhdGNoLm1zZ2lkLmxpbmsvMjAyNjA4MjUtbm9y
ZC12MS0wLTdjMDJmMmI4NzY1YUBvc3MucXVhbGNvbW0uY29tCgotLS0KS3Jpc2huYSBDaGFpdGFu
eWEgQ2h1bmRydSAoNCk6CiAgICAgIGR0LWJpbmRpbmdzOiBwaHk6IHFjb206IGFkZCBOb3JkIFFN
UCBQQ0llIFBIWSBiaW5kaW5nCiAgICAgIGR0LWJpbmRpbmdzOiBwY2k6IHFjb206IGFkZCBOb3Jk
IFBDSWUgY29udHJvbGxlciBjb21wYXRpYmxlCiAgICAgIFBDSTogcWNvbTogQWRkIENHQyBkaXNh
YmxlIHdvcmthcm91bmQgZm9yIE5vcmQgUENJZQogICAgICBwaHk6IHFjb206IHFtcC1wY2llOiBB
ZGQgTm9yZCBHZW41eDE2IFBDSWUgbXVsdGktUEhZIHN1cHBvcnQKCiAuLi4vZGV2aWNldHJlZS9i
aW5kaW5ncy9wY2kvcWNvbSxwY2llLXNhODc3NXAueWFtbCB8ICAgIDEgKwogLi4uL3BoeS9xY29t
LG5vcmQtcW1wLWdlbjV4MTYtcGNpZS1waHkueWFtbCAgICAgICAgfCAgMjc2ICsrKysrCiBkcml2
ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLXFjb20uYyAgICAgICAgICAgICB8ICAgMTYgKwog
ZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXBjaWUtbXVsdGlwaHkuYyAgfCAxMDc3
ICsrKysrKysrKysrKysrKysrKystCiBkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAt
cGNzLXBjaWUtdjZfNDAuaCB8ICAgNTYgKwogZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20t
cW1wLXBjcy12Nl80MC5oICAgICAgfCAgIDE0ICsKIC4uLi9xdWFsY29tbS9waHktcWNvbS1xbXAt
cXNlcmRlcy1jb20tcGNpZS12Nl80MC5oIHwgICA5NCArKwogLi4uL3BoeS1xY29tLXFtcC1xc2Vy
ZGVzLXR4cnh6LXBjaWUtdjZfNDAuaCAgICAgICAgfCAgMTk0ICsrKysKIDggZmlsZXMgY2hhbmdl
ZCwgMTY4OCBpbnNlcnRpb25zKCspLCA0MCBkZWxldGlvbnMoLSkKLS0tCmJhc2UtY29tbWl0OiA2
ZTQ0OGI0MmRjYjg4NWQ4OWRmYjgwYzQyNjNlNTc5YzFjNGYxNWNhCmNoYW5nZS1pZDogMjAyNjA4
MTAtbm9yZC00NjE4MDlmMWQ1YWUKCkJlc3QgcmVnYXJkcywKLS0gIApLcmlzaG5hIENoYWl0YW55
YSBDaHVuZHJ1IDxrcmlzaG5hLmNodW5kcnVAb3NzLnF1YWxjb21tLmNvbT4KCgotLSAKbGludXgt
cGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
