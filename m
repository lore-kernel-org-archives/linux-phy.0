Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9A6A606A32A
	for <linux-phy@archiver.kernel.org>; Thu, 12 Nov 2026 15:37:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ziXr5Qmi;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=phRKJV4/;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=MFwPC3pA
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=9GSxX7MwZvM+aPeRLpjN23RWaCK5/lAFgTFFzKhLtcA=; b=ziXr5QmiGL6UXPynLeRY1XvMFj
	iJF5JYPJsw5T9cCmxM3/Jv0mKwM3ccS1GlR32+uHKHpiNv6x9SibD1cp8Y560/H0TsfjkZUdE85d6
	anyp/xHRz/wkjcgK1r9Dy5VdG7i1v5cZKP45frdcaGiSWlspC1atC6NdcRe7B+DVUfqwNOKhDNOsC
	wqLRqcxGO5S5g/usyRa33bdLtdRFnMdHNcKvWyxxttz9veCRudUS8T44tqs1zwV/swmSBVIpZbeAt
	GYYa2fzgievybTqXOrD+f6KCnIRVXwlnhi6XGGe9JTT34/wb0tSQzVi7koAcu4b0ib44isa3IqrsJ
	wjog+dRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRWrF-0000000ATy2-0MKS;
	Thu, 12 Nov 2026 15:37:01 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRWr5-0000000ATtM-2m5r
	for linux-phy@lists.infradead.org;
	Thu, 12 Nov 2026 15:36:55 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6ACFZOf82593688
	for <linux-phy@lists.infradead.org>; Thu, 12 Nov 2026 15:36:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Y0ibUOV8qb2w57M8b54S8KkbL/HbqzP6ta1cCOvmksM=; b=phRKJV4/S1WG1+TR
	3fjydgQD+giUjPJGsH+XrQ5NP5rf3DyNzV4ZHC/etGvHhOlLkVps+cymh9t1H+Eq
	OjZ47RykDusG+MPbSptzrvMQtkF7H6O5oHoSyMgF8jQ29EaqTB0rIjl42ZKnH8O/
	uXiuTTt7EmAxgTBFJi7WSgY4wUrt7roeyOzm2VJMXjYX/9jsZvVDs74qWCc4bnX0
	v7/uzrCIPUYJ1MZVYF8PiK5BmQh05AqfhRGRL6EHDUuq8f2ItOkNioDmYQnGxm7B
	QZPmGNdyuDoIZKfUd3cnRei/fRwURBkZrTIBs+EH+eImRak+pzLjAS1HaJr2PPG3
	yF3mEQ==
Received: from mail-ua1-f71.google.com (mail-ua1-f71.google.com [209.85.222.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hwbx311ky-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 12 Nov 2026 15:36:51 +0000 (GMT)
Received: by mail-ua1-f71.google.com with SMTP id a1e0cc1a2514c-99c47fe8cacso492428241.1
        for <linux-phy@lists.infradead.org>; Thu, 12 Nov 2026 07:36:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794497810; x=1795102610; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Y0ibUOV8qb2w57M8b54S8KkbL/HbqzP6ta1cCOvmksM=;
        b=MFwPC3pAf8XjASPtSI5hwEN9dex2OOvXc1XJb9Kn/NVG/X3s7ompdnN6xcJwvOmJwm
         WkxQSM09wklsYg1NWm7opLmKMMgzEkWYu3nUSC4sUxlADSARpBIYltsILoOdIRvFBtDB
         InrtMMbcTBQFYGdQHyOdIU7goJ8K8Jmek/peoXFm9VTShHatDXIV8W06ALJNsXZj4tJG
         FlbV1GDDSFF+bQsVkhVxV2qs3DmfFasku4+iNcFl40wyzmwbXVchG2FecVHvBxNpFUnm
         2tT4a5sN15nGSNS0PClvSKgKzgun9D8kftVvBdMb+QopQQw3cIvIXCLvPn3f2Y8fvjGM
         4CMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794497810; x=1795102610;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Y0ibUOV8qb2w57M8b54S8KkbL/HbqzP6ta1cCOvmksM=;
        b=X/LFndrH5VvarZ2oeSeYA2o76Pi3Lcwx/X4uofr5xpHu6/6M53wQw4okc06sQ0XGhQ
         kc7Adknnjk1BdM1HtfveWEAZX+ddqhfsbCcFzlM4dlRqLWxoGYvIkUDuX6z86SHyU3KM
         HMAYxcQcWvDgMalEAhwqnqhOF6gl7dsCN+pj9owb566URWT/xBOnmLAvLUS55ADzULEG
         yaA3qAjKPDw8/H7xGuJBCqdMWETKknuboah66UPbQQJxIyhbAn1vPf6/JXAqQcnvHnou
         YfGHVbCpvUv0b+m7vz47dCcookszMeeBuSMukfZ8INv6Ui8QzFjmULcMTQBh4iSo4sNu
         3dwg==
X-Forwarded-Encrypted: i=1; AL+hErHlYoJwYCBp2NmpSKVZrc3HPGFsQr6cvwke3QkEBhnqUzwJu97rbKNeZqMDNFLwnfKfRbdtjW9P9is=@lists.infradead.org
X-Gm-Message-State: APuU4Z+zlpF1GtXeic9arMTHpbJnpWIKjsMRsY8+eaxGjxTeVbdpuTDt
	tgzBJamrzDMJZYGvtMBodqmT2KB4T2N2twApm+x0u6usqu9UmjpPr8Mw0EveJjbggA5ujMM3Fmc
	HCDd1ZICPm5gkIpnmRfKY1ujhxo0AZIClYiYXWqyV79uFwtY67TstfGrNMKiydZdQ5XZ0
X-Gm-Gg: AYBFou3pChTXaU5otyg3YtGG+5oV7WB6WDUlLxpE4uw1lbfbtyU7azzx2OFWsAW+NTh
	vlvAy0acW1SRxti+p4QMnymiFs1PJJFMJHWay/dTaq2/PRlB7JwiJhY9qmMkuQy2c011WpBG94Z
	MnVej1VFrZDLd/W7jZDUbszRaSZN/t5zdjRfUg2bXF7vAtjdnCDROetONNo7O+EVPiY5nqK333k
	oA2O9x1TNNCKSWCKD+CKB6IMVbmY/NPd5sigAtGcJCIDQpv7GnJg3jFVmG+QDL/q4bAO7ZxCRff
	ZttwlaPd/U5b+1honM38e4hem0nkncuTG/tvcirIfXGMJm3zt+J997GmQwNgB55Nl5AKZWdgQMr
	By/LmMEDMfv+n3U7Swvf+WdFGFsZ1fs/MVjx+ScwvMy7tbpPCAwKvZsvzc3vbB5Rds2Hzsndab1
	Y3aQ==
X-Received: by 2002:a67:e713:0:b0:7d2:d9f8:21cf with SMTP id ada2fe7eead31-7d5061e6d25mr2848363137.29.1794497810077;
        Thu, 12 Nov 2026 07:36:50 -0800 (PST)
X-Received: by 2002:a67:e713:0:b0:7d2:d9f8:21cf with SMTP id ada2fe7eead31-7d5061e6d25mr2848347137.29.1794497809457;
        Thu, 12 Nov 2026 07:36:49 -0800 (PST)
Received: from brgl-qcom.local ([2a01:cb1d:dc:7e00:8916:7b9b:97a2:6c96])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4ba09536ebfsm138353235e9.5.2026.11.12.07.36.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Nov 2026 07:36:48 -0800 (PST)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Date: Thu, 12 Nov 2026 16:36:40 +0100
Subject: [PATCH v2 3/3] phy: phy-snps-eusb2: Enable AHB2PHY bus clock on
 Nord
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261112-qcom-nord-ahb2phy-clk-v2-3-30ad3d947217@oss.qualcomm.com>
References: <20261112-qcom-nord-ahb2phy-clk-v2-0-30ad3d947217@oss.qualcomm.com>
In-Reply-To: <20261112-qcom-nord-ahb2phy-clk-v2-0-30ad3d947217@oss.qualcomm.com>
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
 b=owEBbQKS/ZANAwAKAQWdLsv/NoTDAcsmYgBq9d0IFspCQD45JtUKwA3clwnZ7bmvYBwIdZa1e
 /7hBukkXemJAjMEAAEKAB0WIQSR5RMt5bVGHXuiZfwFnS7L/zaEwwUCavXdCAAKCRAFnS7L/zaE
 w7fuD/0ZS7mqp98din/mP8QmeXGunJjymxEuRF2XUjni4YRHwtMJ0LSakLhsu0AYQ2rZE0vBiZ5
 rwY1EPw49QYvrNww/r2rRuVhbJwU4ZUfyNaDDOSHsgTJrfViZFm3XnmKHtZcL6slqE8QgbG1P0e
 sEThUdV38phJ9BR+suWYqkFQqpY52cSSeVybV6pGILbXDQ2EeZPVCGwpm1H2ZwY6Owgj7PpREUC
 /eOpBiC87IPeTAph3bak/eDPS8yd/BHJXdqrJZJeSqUlLtNavxfut/QBoMufkxad0FCCvvJCZ0S
 63lhaSq7PY1P9c18tnHjWFrSgXFLEtRcHWiG0io2A+0M16Z+T99XHo+iBXYR47YYTdNEiGqu8S6
 tAuS296MjQ7tLZO5tqa8BRWfSG2w+V8MSWDXjXANJ9p9DJ776NGj3zPzIGOwnC40wL0hSBAKQM6
 LieB15SYTWg1kv3XCA2Mg4xhFBfIENTa7VZp5QliOtJl12A1FslXPVQSYnQMcoe8zaqjNDePjmh
 hlRarEfv51WoEYnBf2BTuw9sqVkm5gg7htUPefjl+5ZYN6W72tWlzfpAK/N8R2tQuiwecKuh76+
 i/jZQLh18pe6d++ugaG5Hp5mrIIJQSjvPteUVH/oFJRK5vAlUnk0GfAJQYQM7vU8lJ8v2iF+uqG
 PIS3fW7tcynB0ag==
X-Developer-Key: i=bartosz.golaszewski@oss.qualcomm.com; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-Authority-Analysis: v=2.4 cv=S+5MU4sP c=1 sm=1 tr=0 ts=6af5dd13 cx=c_pps
 a=KB4UBwrhAZV1kjiGHFQexw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=EUspDBNiAAAA:8
 a=bNGo_Fnal8ggQfzXgYoA:9 a=QEXdDO2ut3YA:10 a=o1xkdb1NAhiiM49bd1HK:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTEyMDA2MiBTYWx0ZWRfXz5L4o+ZUseTh
 4zXYqj+HAbJZusJQaCdhFmR7uIdrSM+GxkRxSYsYycsjgUgAA7Q9eDBSdKPrpppBFzHCkPzf+13
 qhfXJY0dOq+eZkoBur8Q9dc8mNWrerZMpTP8mVIY2W0er9uo2TtWagIqJfzMt7FrF9pRN7hap6L
 AEngBchDRJHJMkfJB0ANrpm5y23xCukuyc+hMK3TeaNY+3pLv2VRP0SSYWrAEcWZBnXVoXFVJI2
 F1+OdSpzpwT1isMIqXymWkfT19vLGpPimnqx1xdNox94aDUSWFdoFOEvlvQ+2v/YJ0vCk33Frsm
 mhOCcIHRKnufA0U5XEHkoDiu+UREsYk7XiyYxL88OGiIApQmyJQR72oJyWJcKNZSIaoop87qndX
 J9uYccgRmugDja3tPAveHI8qCoapoctemgjQSPF4BCHZ0d64cqeqLFgRE94QXJEB2S/DzUwJOcq
 KpWqFeFho+TMXpof4rQ==
X-Proofpoint-ORIG-GUID: ke5GmMuHerhdkGr2QIrg1b4pWG4iEaIZ
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTEyMDA2MiBTYWx0ZWRfX2dBGHLrreOmM
 aFHmTqO3A+vtHwCoQY/v+H3hHOnUDWzy7iEdM1iCt2L67dkghS0dVrAEu558HRxDAVU8pZBBqAs
 QbCIUWNLyPBZatF7wLYM6NzKMbVlqrQ=
X-Proofpoint-GUID: ke5GmMuHerhdkGr2QIrg1b4pWG4iEaIZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-12_02,2026-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 clxscore=1015 phishscore=0 malwarescore=0
 adultscore=0 spamscore=0 suspectscore=0 impostorscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611120062
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_073652_098221_2AB10EA9 
X-CRM114-Status: GOOD (  14.69  )
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
