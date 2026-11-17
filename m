Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED849606A8A1
	for <linux-phy@archiver.kernel.org>; Tue, 17 Nov 2026 09:06:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=v6Nd44hU;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=E7uFNKpY;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=eRddN++G
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=9GSxX7MwZvM+aPeRLpjN23RWaCK5/lAFgTFFzKhLtcA=; b=v6Nd44hUB/9Q9Yu15aJ6tmi/GD
	ryBR8P0+c6i9cYPcec5/9P+OgsO+AMCn4Hm7QdEbqK11CfUWhFsm7+aS9IQZZX5mItj1JdlUusoUr
	0hM77rtKBgVxZ1Z8i/XkH0FTD9VNuHCpAOR50fUDJr051mhDQA2DrhyGunLZS1NL5Gax2vT4au+v4
	81cVDTS8oC8migxyWAugJ/W5ZwQrRVxWN+N1VJEsaEcqLBWCxQ3ymBacATjS09c3slxP0M/muS3TO
	gZtvjlk1zHd7wJ2btXKxql3dt1T+S5HCLmYOZlEpKdhvxjqzlVNoXUv6fgM5k0/xxNAlMwBqHNBP/
	NnSWaffQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTF9J-000000051ZI-2vj4;
	Tue, 17 Nov 2026 09:06:45 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTF9G-000000051Y1-16hD
	for linux-phy@lists.infradead.org;
	Tue, 17 Nov 2026 09:06:43 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AH55e923350021
	for <linux-phy@lists.infradead.org>; Tue, 17 Nov 2026 09:06:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Y0ibUOV8qb2w57M8b54S8KkbL/HbqzP6ta1cCOvmksM=; b=E7uFNKpYl50J77JQ
	3v0ACauajqFZZ1L8KULdMKi9CWIClbELw8U7atXet56C/wQ9VsckYLASZk09w/Su
	1JCHW4CDv6IbC9qAvESDKqNa9rnfJ5qmaCiBkTtOEUh1yRV3+/Ew9lPOSvODioSI
	lh7cJGkb5Xkxua78e+KrZWEKNCA1Ekg7Q4egqG98hq/kan1CzqQwXR+9QTUYOhs8
	DPaysVIqjb+l/eO15qUkcZvmGb6nyGarX39qGnO2CO4pOcTXdFH6npG/a3Ub8F5Y
	220j98tmZ+4jsXlHq735m0OWWVIwJSIzcBdhMFiSvuOQrHPYdkC4RBJ86Qk6H7O8
	Rctj7Q==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j0gfr0v6d-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 17 Nov 2026 09:06:41 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-934963b2bc0so853600085a.3
        for <linux-phy@lists.infradead.org>; Tue, 17 Nov 2026 01:06:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794906401; x=1795511201; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Y0ibUOV8qb2w57M8b54S8KkbL/HbqzP6ta1cCOvmksM=;
        b=eRddN++GMDqbT94vjzFIt1gEqHRWbSY0OOshFa8U5O4rpkYugxUGAxaZIoK7wQMLfx
         zcKwteTy4Mx5r3ebxR9WiefiDGlI6Y6yoSbR/KkXtJ9/IN7+Uj1rHSTjW4kjE2BV3Rf5
         H7dp8w5YrAv2ikVW2O/txZrHJ6YSlRXvWrMfUnxLAaRHlUVPr9QiRXIiTfclvKYGWgEF
         VZSFgk9V4Rr8Z4YcD+xx8TawBpKZJTFXwg7KjJjRUPyrM7Lsf8Q20x3iOOzJhQo+Tg6T
         6STbJ4jPFIHmQXIOmGQIcHVjgaDClf3MdQqXHcsB1KxYxjffa2xQYPywDSohLM2VsLjI
         hxqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794906401; x=1795511201;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Y0ibUOV8qb2w57M8b54S8KkbL/HbqzP6ta1cCOvmksM=;
        b=rJMn40NvJJScpYaIpPaKE2p9qerzkQtFDMPjB6B2Pr+C8T1+N5+u/KzOEoH4yPA/TL
         X5qcVqgELBTWXvHQaH2bkqFTTgE34kUc360cwZjpOVoJS6UFJ6J5eYdtJM6UmYM2/11i
         uV7tGryuAt94jhzMi6KO/hCT3cM3US2xPIb+mATvz+/kEYhKfs2HUw5IkHIZ8pHKMX7P
         mFuP61Y1mPJqXt9rLjbmmGMmiKmUMUZGylGv8IqFE9lALPLO0OFZw4QuJj0hUiQuiBP1
         jN+HxUJB9HPCxzsZCGhVI67GsH6c8itV+EubOV4zX7269vBx4FHDx7oVcYCcHvyZOEbi
         gyRg==
X-Forwarded-Encrypted: i=1; AL+hErFCLtpz4Obk4UrugwjuQUfShgqFYUWnioV6ABkRZtpHrANDGG9Rzq+0HyA3z2M0r/TahAhLPn8lO2s=@lists.infradead.org
X-Gm-Message-State: APuU4Z+hggw8IueF/0OFUFnFzE45qZbN0vMOwFwD7kdMufJXMVLw4Ykp
	zjy8K+/ra35DHrF9wTZNorgLRGL1urU4bS1J0assFp7zOeAew7NUAyZUn2kX71LaalRFc/uaGc8
	/ANYoeXhm9jgqdnW5m0TFhbd83FRYZH+Fv0Tru6v0NlVEEvdnPJcyxc/qFpsRWU+vS6v/
X-Gm-Gg: AYBFou2+XFnGV/N3/8sds+mAC2MYhRo7VhPLhpzG8BbiY2aBjS1WzZuI0ebDXhEoX3c
	JHph6S9iXKHjwsF3fr3wbm4kc/pdQ3EYdYPllmfOr3ty3XkIUd427/TuX+6KCHv/9r+cLd+/6Os
	mlPQorh5pG4eCI39ZCslo/ZFzhN1o02otv8dHUl2ql10ReCOxesIMuiCFB5gBSf1gRwuBtu5G89
	q3YFiLlq53VGsHwIx/YvQ55Ow+XzF3c4U4O3ovrJkk2DjeCpRaKvxQMYL+IWy5CI9zsJ53IBSnW
	D75MWRX1nupf00v013h0QIIPxCb9urkKw/7PomwaTVvjJ2CmyN8zrk22ZTYg+GQASy/dbWPM83c
	8bX8ELh5pzz+6wzl0WVBMM6HRmIiu+zeaj8c1hhnK3P4qhXqi4p0VTQbr2EkGjm6U0YZm/0gsvI
	Q=
X-Received: by 2002:a05:620a:4109:b0:93e:fc4e:c490 with SMTP id af79cd13be357-9494bb849c7mr2069481685a.15.1794906400661;
        Tue, 17 Nov 2026 01:06:40 -0800 (PST)
X-Received: by 2002:a05:620a:4109:b0:93e:fc4e:c490 with SMTP id af79cd13be357-9494bb849c7mr2069478685a.15.1794906400136;
        Tue, 17 Nov 2026 01:06:40 -0800 (PST)
Received: from brgl-qcom.local ([195.50.164.66])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-49c60f8d615sm27310657f8f.56.2026.11.17.01.06.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Nov 2026 01:06:39 -0800 (PST)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Date: Tue, 17 Nov 2026 10:06:30 +0100
Subject: [PATCH v3 3/3] phy: phy-snps-eusb2: Enable AHB2PHY bus clock on
 Nord
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261117-qcom-nord-ahb2phy-clk-v3-3-ce5ee1073208@oss.qualcomm.com>
References: <20261117-qcom-nord-ahb2phy-clk-v3-0-ce5ee1073208@oss.qualcomm.com>
In-Reply-To: <20261117-qcom-nord-ahb2phy-clk-v3-0-ce5ee1073208@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abelvesa@kernel.org>,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.17-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=2158;
 i=bartosz.golaszewski@oss.qualcomm.com; h=from:subject:message-id;
 bh=0QzX4LF5lSbbC5DnVnFoOIfhrWUJ8IJ91S32d9U04Kg=;
 b=owEBbQKS/ZANAwAKAQWdLsv/NoTDAcsmYgBq/BkXPVVw/zXDKGn/WN3BO3CD+t1o1itzre7fU
 IU2MWIFaFCJAjMEAAEKAB0WIQSR5RMt5bVGHXuiZfwFnS7L/zaEwwUCavwZFwAKCRAFnS7L/zaE
 w/7aD/92Nf5Ny8nlbehp89MHvq35uh9yLF+ft/kDShrScyndWe7PBoxVej9ssJCksx+LZPRMQn1
 AzJrGRL7AyyHeJqpdc878d5rcXub9dgsPX1mx1pLmKQj2z5R0xaFPtjtV/pRdPCsJlRqt7kmck7
 jsH5bClk9Fve/w8OYso8EQkKm1Sf9hjMYUEchLMhPZmws0BNlyukRSiXumm7ZwJUjnlZx43SRDZ
 n7i5/mWHeprRpmqhrmX33efQMFgeCiDR++1aE7fPwQ15fzoVF1Gfx57ZqFL8ZreZ2WAwC3KWfzs
 M3ej3IdxmnBsQp5YmwcL0mL/cVpMk0W2/CVTe8d1nVJm8oC5gahBK+IsdC1Rd6crib1h6y+bUmU
 7GVxDzsPbbQD4rz61DQThGQb+9HI/LG1+AIP1EFl8ua2a64qjuJeT3LRgVAgo4bnZiw4XzMud6B
 aV5wqVkv/pItbzS7Lpw4kWYBp61wNxJnQfZSMqb90sAn66bRd9flv3stmCseigCowLYIAncgUOg
 lTgSaa2a4UMlV8GU2KQ4AVz509zyMa6x6nPgrjkMurpa1srcTjJ3iZTUDb/8TLBdlO/7BfRFZfA
 dzdj2yAo0ks86w7A7PePfTaK49J5NvLq5A+h7bPf3vfwF0rocYvtmjFn9J23lm7QIoH8RQLMrp6
 +VSbw5J1veozpXw==
X-Developer-Key: i=bartosz.golaszewski@oss.qualcomm.com; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-Authority-Analysis: v=2.4 cv=X/rHu2Te c=1 sm=1 tr=0 ts=6afc1921 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=Jk2/TV77q6/E6wQq2oQJxQ==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=bNGo_Fnal8ggQfzXgYoA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: pUPX6JIKUMFafh-33l4bG6rjQU9G-IvT
X-Proofpoint-ORIG-GUID: pUPX6JIKUMFafh-33l4bG6rjQU9G-IvT
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTE3MDAzNiBTYWx0ZWRfX5Uwtjd3196Ce
 mKSUs2LIpzD0h4ZZsa+I3SarDZoURer+Jse1bn0r7wCz9eU3hvAkXz1lFIXmBDiV0RDCEJTWjf8
 6xcgrHDtAypHt46dQh7kkAkmFjZ8lCUPEFVk4akmIJpwrgVxCWFZwG9HNpcw6uv54tQrTtfa3Jx
 ZDnAdv4GhDbRnOWQqsln3WVTZaMDZFuG/fbZRAhQbTJlMrisWpTW+qaXruW7AUhrS+GG+7jWf9Q
 EAKStJs33FERaYR9aohhS3AVXEcIwBysk8kWxHU1SYMe1GE1yzG9eAQry0otmSaDaPdIOBMAz6W
 Kq96kV7K0CwGT9RjtjQ/UuY98ofbAksbVooJ54+Wj1u/VDEbhvyHAa62WU8opiH7MimNYXQbsf3
 H2KC3t0MJ3y5vgvkf2zIr5ILcR+hBF5xhb/249Qi+Zqda4RrbtlgvHYLRW9xqep3/jBnzCRSR45
 1N0mM9KMgNEUA3aOa4A==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTE3MDAzNiBTYWx0ZWRfXxD2GC+7U4I6H
 49D9IlilTSPNkEuI2aWaTBCvRyZGRBfGFmGwK8UeRDAvQU/nq1L21ut8M7OlaxDXEyBDkBFYUYf
 A9B5GoiihBPobrnJ7aQVUhnPS6YXDvI=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-17_01,2026-11-16_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 spamscore=0 suspectscore=0 bulkscore=0
 lowpriorityscore=0 impostorscore=0 priorityscore=1501 phishscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2611040001
 definitions=main-2611170036
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261117_010642_430627_0A0AB96D 
X-CRM114-Status: GOOD (  14.98  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Shawn Guo <shengchao.guo@oss.qualcomm.com>

On Nord, the eUSB2 PHY registers sit behind the AHB2PHY_0 bridge, gated
by NE_GCC_AHB2PHY_CLK. When nothing else holds it, e.g. on boards
where only the USB20-only controller is in use, clk_disable_unused()
gates the bridge and PHY init accesses go nowhere:

  xhci-hcd xhci-hcd.2.auto: can't setup: -110

Add Nord-specific match data that requests both "ref" and "bus" clocks,
reusing the existing Qualcomm init sequence. The bus clock is enabled
and disabled together with the ref clock in phy init/exit.

Signed-off-by: Shawn Guo <shengchao.guo@oss.qualcomm.com>
Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Tested-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
---
 drivers/phy/phy-snps-eusb2.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/phy/phy-snps-eusb2.c b/drivers/phy/phy-snps-eusb2.c
index ee473b32f116d..4c70d15210c68 100644
--- a/drivers/phy/phy-snps-eusb2.c
+++ b/drivers/phy/phy-snps-eusb2.c
@@ -452,6 +452,16 @@ static const struct snps_eusb2_phy_drvdata sm8550_snps_eusb2_phy = {
 	.num_clks       = ARRAY_SIZE(qcom_eusb2_hsphy_clock_names),
 };
 
+static const char * const nord_eusb2_hsphy_clock_names[] = {
+	"ref", "bus",
+};
+
+static const struct snps_eusb2_phy_drvdata nord_snps_eusb2_phy = {
+	.phy_init	= qcom_snps_eusb2_hsphy_init,
+	.clk_names	= nord_eusb2_hsphy_clock_names,
+	.num_clks	= ARRAY_SIZE(nord_eusb2_hsphy_clock_names),
+};
+
 static int snps_eusb2_hsphy_init(struct phy *p)
 {
 	struct snps_eusb2_hsphy *phy = phy_get_drvdata(p);
@@ -607,6 +617,9 @@ static int snps_eusb2_hsphy_probe(struct platform_device *pdev)
 
 static const struct of_device_id snps_eusb2_hsphy_of_match_table[] = {
 	{
+		.compatible = "qcom,nord-snps-eusb2-phy",
+		.data = &nord_snps_eusb2_phy,
+	}, {
 		.compatible = "qcom,sm8550-snps-eusb2-phy",
 		.data = &sm8550_snps_eusb2_phy,
 	}, {

-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
