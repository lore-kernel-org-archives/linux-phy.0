Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96904C43458
	for <linux-phy@archiver.kernel.org>; Tue, 30 Jun 2026 19:04:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jIdX7tnBcc5BWbomD+K5dTqhsnIoOLlNGm5Q7pebV4Q=; b=gWBjKgzOuyZvOc
	YQL3KLI553amgcnBClZyVSK9IOMBLutiFDBQ1JYd6ruAQJep9vsjC9dMBzkGp+4OvUlP1GExKjyxi
	tPbOzHDWsgFSW90RNFTG6HedqCZGqcQwporCLf0F5OUu005r86PD+iU1X3MVsoEoanWpHN6Zlyhi6
	1I+3u2S/pyIQh6R6g4mycvreNrlTzL0hUiW0cziX+tP5d5x9/IvDaF/4YSIL38MfKb5rMI2mDuL8m
	ZxVQElXwwD/b3jqaJNea1HKWjgOdg/vSQ6Fb+w2JuPdbeCQgXebFOCTuZ8dl/a3jeqe5fGKz7AfOA
	4vAU+JJf5bw7huPw73/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wedkZ-000000005J5-1U4I;
	Tue, 30 Jun 2026 19:04:03 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wedkU-000000005Hv-2A0y
	for linux-phy@lists.infradead.org;
	Tue, 30 Jun 2026 19:04:01 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65UHkiYI2734196
	for <linux-phy@lists.infradead.org>; Tue, 30 Jun 2026 19:03:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hoAFJhDFaoYNFe6KuyZHoEL7dGndbuJXxfS0b/1jpj0=; b=hCyjYy40zc/VSfH4
	KaddSYfOljjRIVy41oBDdSDdrQKYC38VeGR4ByBa5tAq+Ju5Ay1IzmMHNlpTTeoP
	6W7uJXIqb7OHwnveefHTOqgHUb913NR7bvFR/0EgXIuviy1f5ufFkSTJ9nqeVr5O
	sdETUcihsnC35xyvmWngYmXQCX8Kjcnid19suCLZYP4DHCB2TjOcCnk2zPrZ2XKe
	rpPKIYYbwuvyWB3OFhdhYIk/jZ+KAQRsYZmucKsg0PKYbSvjlaCI9utuU7DTBUA5
	/25wxMNcNCq3bjoRh1gOSzBSP6vyb9UHKrNVtCMgW7LE5EeoZLFRGf/6s+BbWN0j
	iPvxTg==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f4h0ary3x-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 30 Jun 2026 19:03:57 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-30ba395b047so2545550eec.0
        for <linux-phy@lists.infradead.org>; Tue, 30 Jun 2026 12:03:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782846236; x=1783451036; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hoAFJhDFaoYNFe6KuyZHoEL7dGndbuJXxfS0b/1jpj0=;
        b=kh5IDNcbzmByMRy9qKvVwXf50LGSjO67laAIZ1ADybWaowmsbJtD3vltVwnMQqg6Vk
         wzR6VJPPuRvnWCq2ASXngRRQiMH2p5s0jfOgADSdxxTtrfAgEySOGw42lBZA6c7aJqXt
         i1tblA7TZGbl4THvUdaEAlpporkaHdCzYl0CQspwT86rjfZvWJcysNB1hAEzSjPzy/pb
         iimqz0y0GZTXIuVyYYYehn+QrlJRLi+nlPrU54ZXj9aJExFS+/RUGU1+LlkdbmZ46kl/
         OvH/47CfNmCkMH6AVUNPVuRk44PzLrgC1663txvxlQ9XoWFppveyDjOxJhbj2qCPSHfW
         WULA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782846236; x=1783451036;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=hoAFJhDFaoYNFe6KuyZHoEL7dGndbuJXxfS0b/1jpj0=;
        b=scrOkJYOrjPrwr/XyemWAmgzajqJTXAIWLVy+KpxiayXc9dpq1P/G+SHtrPf0KeSlc
         CMGslsZbtJq6xG/wNSvzxj2QEwCnU9KEiQ1PHxnFwQjmNO6ARbLOcK68xkzDCEmCOTOq
         U+pjVJRG2m2v4UfwR+MJmuCZZF2oHeI7+/P0WBCzITHtLzRXyFx533lyqnFd6sFuiJrI
         Rrro9LnZUXDmijHCGe/AtoF92eyTRdvRTP7P4U5E6ISzHXS6EGFZTqvDqyn80G5PFJah
         kOTvfF3a2i8j4F7p8BI+vLbtgWLBCWbShJXLTDE1KseOdD8cQUjaBxYFdDqVTZhnInn9
         1nug==
X-Forwarded-Encrypted: i=1; AHgh+RrgOD4sViNMo1AcJEsoEx4KiI0TkxGqI5zbWW4x6hbPhaaXAl8jwanj3apW/s5uhj4sfGzM28MLGkA=@lists.infradead.org
X-Gm-Message-State: AOJu0YxO+Za4+Cm4jzz4++VyY71INUEHfaiPaVuqC6w9VyrC0oyk3zui
	mczcACgmNVuEtTV+6YnKniR1eaq0PQquA4wkOCZNp2EF1f+hYl5dAFpg4NfJw5jwny9GQ0Xf/Fp
	zpUrMsLQBz7OIJ8pzsc3ptD/BCMgzvlQIfkGyaFu3d2Aun9KR29mDfAYfuISAQ9cOaYDC
X-Gm-Gg: AfdE7cmBLZDaxjlqDeAj0m02ZSQ4VaOEti12FxhHWQyLCejZm/4TC0koJNHhR6dT09O
	Nqi6m+yn8UcTJZBPdOJo58w4a5FlEBVe74GXwXAB+LsAp+lmrz3eDcz7yiD8XtSMPSdpvhAs0iz
	eQz5yTN26dlkmeWqlqJSyH+BAeuYK8455RzfkMujpMsSaB+9mKhRPS550zwGBeyKtgwa5EKxE2z
	x5yEklgFnv2kwiBX+tYi6Fib5HelKovip4dEzuAj/HM3kR1q6MJAJs2IUB4xxlKIBUOIKtEtCTU
	o9witbeXcYetNAwVzxe8GTy/MG3CsGRx8DgrW8/zvvTb2juGHAsv3DU9piHcwWiK0uOnkg9kYxW
	tjVdh5gLp3eXp91mgCTpwpUlPf4MCd1Al3B639wZU9i2CmvE=
X-Received: by 2002:a05:7300:dc10:b0:30b:eb75:8a5a with SMTP id 5a478bee46e88-30ef0929c37mr1293390eec.25.1782846236318;
        Tue, 30 Jun 2026 12:03:56 -0700 (PDT)
X-Received: by 2002:a05:7300:dc10:b0:30b:eb75:8a5a with SMTP id 5a478bee46e88-30ef0929c37mr1293352eec.25.1782846235694;
        Tue, 30 Jun 2026 12:03:55 -0700 (PDT)
Received: from hu-sushruts-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-30ee317095dsm14963815eec.15.2026.06.30.12.03.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jun 2026 12:03:55 -0700 (PDT)
From: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
Date: Wed, 01 Jul 2026 00:32:48 +0530
Subject: [PATCH 6/9] PCI/pwrctrl: tc9563: Add API to control endpoint power
 and reset
MIME-Version: 1.0
Message-Id: <20260701-shikra-upstream-v1-6-e1a721eb8943@oss.qualcomm.com>
References: <20260701-shikra-upstream-v1-0-e1a721eb8943@oss.qualcomm.com>
In-Reply-To: <20260701-shikra-upstream-v1-0-e1a721eb8943@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org,
        Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1782846191; l=7032;
 i=sushrut.trivedi@oss.qualcomm.com; s=20251127; h=from:subject:message-id;
 bh=t3qExvvehHne3DGPiTuwj1nj3sEKbHg7NRpHscaXsag=;
 b=P3CTnGwYJ+buMH2sHYEhz9nGYIDn5Yv1am9Vm73vD9wBO3z2k0en4IeOHe1HtqpW7+0hfc6Ou
 fe5OHRk9timDAw7nZq4NGYufhQQC+SnoycknfDSOly6itHJiSfQaN7d
X-Developer-Key: i=sushrut.trivedi@oss.qualcomm.com; a=ed25519;
 pk=OrUHTxBaSg1oY3CtCictJ5A4bDMNLRZS1S+QfD9pdjw=
X-Authority-Analysis: v=2.4 cv=OuF/DS/t c=1 sm=1 tr=0 ts=6a44131d cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=0i6Wl48qgBbC6S7HcagA:9 a=QEXdDO2ut3YA:10
 a=bBxd6f-gb0O0v-kibOvt:22
X-Proofpoint-ORIG-GUID: g4zj-4qAggyqTqcrpgKjlq3jw0kYHWpN
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjMwMDE4MiBTYWx0ZWRfXyLbH9NWLvam5
 uhGs5IHKYoKn5L0endej2oGSLx2WZBkXJgktBa/n7L0dxGHOLMm8jfrB+/XosP61wLHGNer8/l2
 Y8/k8z1kqBVIRvuux230gZDHZMNQ0dI=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjMwMDE4MiBTYWx0ZWRfX+5N+nesAQbfy
 xAZ13wUIJlxSAXni3ttkjnh5yBAz5JSdq/GPtBHmYAMKFyGw3Gx64IBHuypVaWH8jjhLmY6LZuV
 hF2a6stfkQ8YPDlQou8vtYZZavUpJ3QFRF73t+XSqxY6LLdoqmn5vRseJ4ljPPWmSq81uN0YChj
 NyTZo+mzEn7dRQfUDsgoEUiy20xeQN0EzOtJxTifPrFxOmSQDUO2ejHrl8Of8kSc7lWFrb/lNxh
 UF/PshRNEjaIa/kbe1rxEfQXPOwI6IK6aHR1mnQ3fWBCeuDw3OOdaj6+POXUMbYhLKiCjdHEzj+
 Ew6sTxfrSt/L+GnNmrOO39oJ26XRZh5drJiqKCRKjHDaUNoV1tcEZRns2PyVrmTbCiCVvcfDDge
 UL1puY283HafVWhrLOXunlvkejD9JTQN6pJjtQB+OhGlK9mn8W/Ke1rMtLU8SFCGwmAuUzINhjT
 u8++LgOJJP470mPy7+A==
X-Proofpoint-GUID: g4zj-4qAggyqTqcrpgKjlq3jw0kYHWpN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-30_04,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 spamscore=0 lowpriorityscore=0 bulkscore=0
 impostorscore=0 clxscore=1015 adultscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2606300182
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260630_120359_038501_8103C4AE 
X-CRM114-Status: GOOD (  22.36  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Some platform utilise TC9563 GPIOs to enable power and
control reset of endpoints.

This patch adds support to parse endpoint reset and power enable
gpios from each TC9563 port node in the devicetree. To configure
these GPIO's during the POWER ON sequence, two new API's are
introduced: tc9563_ep_pwr_en() and tc9563_ep_assert_deassert_reset().

Signed-off-by: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
---
 drivers/pci/pwrctrl/pci-pwrctrl-tc9563.c | 152 ++++++++++++++++++++++++++-----
 1 file changed, 129 insertions(+), 23 deletions(-)

diff --git a/drivers/pci/pwrctrl/pci-pwrctrl-tc9563.c b/drivers/pci/pwrctrl/pci-pwrctrl-tc9563.c
index 1555e8a9b3ca..de68b9836645 100644
--- a/drivers/pci/pwrctrl/pci-pwrctrl-tc9563.c
+++ b/drivers/pci/pwrctrl/pci-pwrctrl-tc9563.c
@@ -62,6 +62,8 @@
 
 #define TC9563_TX_MARGIN_MIN_UA		400000
 
+#define TC9563_GPIO_NONE		(-1)
+
 /*
  * From TC9563 PORSYS rev 0.2, figure 1.1 POR boot sequence
  * wait for 10ms for the internal osc frequency to stabilize.
@@ -91,6 +93,10 @@ struct tc9563_pwrctrl_cfg {
 	u8 nfts[2]; /* GEN1 & GEN2 */
 	bool disable_dfe;
 	bool disable_port;
+
+	int ep_reset_gpio;
+	int ep_pwr_en_gpio;
+
 };
 
 #define TC9563_PWRCTL_MAX_SUPPLY	6
@@ -256,6 +262,89 @@ static int tc9563_pwrctrl_disable_port(struct tc9563_pwrctrl *tc9563,
 					     ARRAY_SIZE(common_pwroff_seq));
 }
 
+static int tc9563_pwrctrl_ep_pwr_en(struct tc9563_pwrctrl *tc9563,
+				    enum tc9563_pwrctrl_ports port,
+				    bool enable, int ep_pwr_en_gpio)
+{
+	u32 ep_pwr_en_gpio_mask, val;
+	int ret;
+
+	if (ep_pwr_en_gpio == TC9563_GPIO_NONE)
+		return 0;
+
+	ep_pwr_en_gpio_mask = BIT(ep_pwr_en_gpio);
+
+	/* Set TC9563 GPIO as output */
+	ret = tc9563_pwrctrl_i2c_read(tc9563->client, TC9563_GPIO_CONFIG,
+				      &val);
+	if (ret)
+		return ret;
+
+	val &= ~ep_pwr_en_gpio_mask;
+
+	ret = tc9563_pwrctrl_i2c_write(tc9563->client, TC9563_GPIO_CONFIG,
+				       val);
+	if (ret)
+		return ret;
+
+	/* Toggle 0->1 to enable power */
+	ret = tc9563_pwrctrl_i2c_read(tc9563->client, TC9563_RESET_GPIO,
+				      &val);
+	if (ret)
+		return ret;
+
+	val = enable ? (val | ep_pwr_en_gpio_mask) : (val & ~ep_pwr_en_gpio_mask);
+
+	return tc9563_pwrctrl_i2c_write(tc9563->client, TC9563_RESET_GPIO, val);
+
+}
+
+static int tc9563_pwrctrl_ep_assert_deassert_reset(struct tc9563_pwrctrl *tc9563,
+						   enum tc9563_pwrctrl_ports port,
+						   bool deassert, int ep_reset_gpio)
+{
+	u32 ep_reset_gpio_mask, val;
+	int ret;
+
+	if (ep_reset_gpio == TC9563_GPIO_NONE) {
+		switch (port) {
+		case TC9563_DSP1:
+			ep_reset_gpio = 0x2;
+			break;
+		case TC9563_DSP2:
+			ep_reset_gpio = 0x3;
+			break;
+		default:
+			return 0;
+		}
+	}
+
+	ep_reset_gpio_mask = BIT(ep_reset_gpio);
+
+	/* Set TC9563 GPIO as output */
+	ret = tc9563_pwrctrl_i2c_read(tc9563->client, TC9563_GPIO_CONFIG,
+				      &val);
+	if (ret)
+		return ret;
+
+	val &= ~ep_reset_gpio_mask;
+
+	ret = tc9563_pwrctrl_i2c_write(tc9563->client, TC9563_GPIO_CONFIG,
+				       val);
+	if (ret)
+		return ret;
+
+	/* Assert-deassert endpoint reset */
+	ret = tc9563_pwrctrl_i2c_read(tc9563->client, TC9563_RESET_GPIO,
+				      &val);
+	if (ret)
+		return ret;
+
+	val = deassert ? (val | ep_reset_gpio_mask) : (val & ~ep_reset_gpio_mask);
+
+	return tc9563_pwrctrl_i2c_write(tc9563->client, TC9563_RESET_GPIO, val);
+}
+
 static int tc9563_pwrctrl_set_l0s_l1_entry_delay(struct tc9563_pwrctrl *tc9563,
 						 enum tc9563_pwrctrl_ports port,
 						 bool is_l1, u32 ns)
@@ -400,28 +489,17 @@ static int tc9563_pwrctrl_set_nfts(struct tc9563_pwrctrl *tc9563,
 					     ARRAY_SIZE(nfts_seq));
 }
 
-static int tc9563_pwrctrl_assert_deassert_reset(struct tc9563_pwrctrl *tc9563,
-						bool deassert)
-{
-	int ret, val;
-
-	ret = tc9563_pwrctrl_i2c_write(tc9563->client, TC9563_GPIO_CONFIG,
-				       TC9563_GPIO_MASK);
-	if (ret)
-		return ret;
-
-	val = deassert ? TC9563_GPIO_DEASSERT_BITS : 0;
-
-	return tc9563_pwrctrl_i2c_write(tc9563->client, TC9563_RESET_GPIO, val);
-}
-
 static int tc9563_pwrctrl_parse_device_dt(struct tc9563_pwrctrl *tc9563,
 					  struct device_node *node,
 					  enum tc9563_pwrctrl_ports port)
 {
 	struct tc9563_pwrctrl_cfg *cfg = &tc9563->cfg[port];
+	struct of_phandle_args args;
 	int ret;
 
+	cfg->ep_reset_gpio = TC9563_GPIO_NONE;
+	cfg->ep_pwr_en_gpio = TC9563_GPIO_NONE;
+
 	/* Disable port if the status of the port is disabled. */
 	if (!of_device_is_available(node)) {
 		cfg->disable_port = true;
@@ -436,6 +514,18 @@ static int tc9563_pwrctrl_parse_device_dt(struct tc9563_pwrctrl *tc9563,
 	if (ret && ret != -EINVAL)
 		return ret;
 
+	ret = of_parse_phandle_with_fixed_args(node, "ep-pwr-en-gpios", 2, 0, &args);
+	if (ret && ret != -ENOENT)
+		return ret;
+	else if (!ret)
+		cfg->ep_pwr_en_gpio = args.args[0];
+
+	ret = of_parse_phandle_with_fixed_args(node, "reset-gpios", 2, 0, &args);
+	if (ret && ret != -ENOENT)
+		return ret;
+	else if (!ret)
+		cfg->ep_reset_gpio = args.args[0];
+
 	ret = of_property_read_u32(node, "toshiba,tx-amplitude-microvolt", &cfg->tx_amp);
 	if (ret && ret != -EINVAL)
 		return ret;
@@ -478,18 +568,28 @@ static int tc9563_pwrctrl_power_on(struct pci_pwrctrl *pwrctrl)
 
 	fsleep(TC9563_OSC_STAB_DELAY_US);
 
-	ret = tc9563_pwrctrl_assert_deassert_reset(tc9563, false);
-	if (ret)
-		goto power_off;
-
 	for (i = 0; i < TC9563_MAX; i++) {
 		cfg = &tc9563->cfg[i];
+
 		ret = tc9563_pwrctrl_disable_port(tc9563, i);
 		if (ret) {
 			dev_err(dev, "Disabling port failed\n");
 			goto power_off;
 		}
 
+		ret = tc9563_pwrctrl_ep_assert_deassert_reset(tc9563, i, false,
+							      cfg->ep_reset_gpio);
+		if (ret) {
+			dev_err(dev, "Assert EP reset failed\n");
+			goto power_off;
+		}
+
+		ret = tc9563_pwrctrl_ep_pwr_en(tc9563, i, true, cfg->ep_pwr_en_gpio);
+		if (ret) {
+			dev_err(dev, "Enabling EP Power failed\n");
+			goto power_off;
+		}
+
 		ret = tc9563_pwrctrl_set_l0s_l1_entry_delay(tc9563, i, false, cfg->l0s_delay);
 		if (ret) {
 			dev_err(dev, "Setting L0s entry delay failed\n");
@@ -519,11 +619,17 @@ static int tc9563_pwrctrl_power_on(struct pci_pwrctrl *pwrctrl)
 			dev_err(dev, "Disabling DFE failed\n");
 			goto power_off;
 		}
+
+		ret = tc9563_pwrctrl_ep_assert_deassert_reset(tc9563, i, true,
+							      cfg->ep_reset_gpio);
+		if (ret) {
+			dev_err(dev, "De-assert EP reset failed\n");
+			goto power_off;
+		}
+
 	}
 
-	ret = tc9563_pwrctrl_assert_deassert_reset(tc9563, true);
-	if (!ret)
-		return 0;
+	return 0;
 
 power_off:
 	tc9563_pwrctrl_power_off(&tc9563->pwrctrl);
@@ -601,7 +707,7 @@ static int tc9563_pwrctrl_probe(struct platform_device *pdev)
 				port++;
 				ret = tc9563_pwrctrl_parse_device_dt(tc9563,
 								child1, port);
-				if (ret)
+				if (port + 1 >= TC9563_MAX || ret)
 					break;
 			}
 		}

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
