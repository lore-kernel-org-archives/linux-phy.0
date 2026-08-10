Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C88DC5B56C
	for <linux-phy@archiver.kernel.org>; Mon, 10 Aug 2026 15:42:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9tDDGBKOYx/CKzw7Q0B1b1xbghPj1Rdi20QWE5+G3ZU=; b=gCxspXVsGiokTk
	Q5xvAKPDV4RPk9KPZJcwZ8pC+NIftJUMX72KzdvyJ+lvrfmH8h2VYPP4Iwdq9PJTh8KfMfIi+eeui
	lvSgGBrkZ8LOFoaI2+tRYyvtdhIWJvVNjcZEsNP8MDaa3hAF0VoTnPxzBZ2SPKVcqonYldWoilaIt
	inMSW9UMH3/ol69wH/+miPnIwb2KMdeGGno65GNacn66sBdygVRrA9qCDSjBCWdEcMUlR+bvw8+vM
	Lc88ZqST8Nuw/ovv3LlaUtWMJvy+rGj0ys72cmqNtJKgqgg6bPKfyyAIMUuE/hAMrhklAgtr8J4AZ
	c8KpgrTqgu9Ls6QhKTJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtS90-0000000CIYm-3aqx;
	Mon, 10 Aug 2026 15:42:30 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtS8y-0000000CIXN-32bm
	for linux-phy@bombadil.infradead.org;
	Mon, 10 Aug 2026 15:42:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=ykiz7/WLXu1Pqam7m96oprgwnXnPFLvlLQkcUT1pgeA=; b=O8QWl+J+197rsoNSuEEy85ykna
	CkJrqqI5LLQCciYrJv3g0vhKh4VQvPImgs/uWnccTm3ZS/TztOlMO9QOl74TsR30yIo5YSRl77tT0
	RsVJJzX6n1YepRMLEHgx45V8XlASlr6RvxOAgtFeufOwDnTNkGfHhBYvw2HTntU1HOVPrqByt/JKR
	OLgfZxrKOXfEGyOS17rij0651ZQQntJIywzIbdXlpigYdl8qA6k+5IuzGWnVus8J7Fw4sVS5J0MIz
	ZEs5eEGjWTYXJv776SIkDSgK9jv826wyRk/uQmfGBHszx3LJDgWg3WAlJqwElcmah1yJzFDaVQnXS
	u6GHmdRw==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wtS8v-0000000DxLW-3x2x
	for linux-phy@lists.infradead.org;
	Mon, 10 Aug 2026 15:42:27 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67AFWMUL2035048
	for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 15:42:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ykiz7/WLXu1Pqam7m96oprgwnXnPFLvlLQkcUT1pgeA=; b=UOLHK9R46ffmVQXv
	ZQwEq0a8ewE8eq3tOwO3f74Jy+opbpXLRpw0AfxuMocVObs4gccOCaHSC7B6KtW/
	Wu4wxcdUOPOLna37bl4kE36gdF5UyjLY5PMj7iT2oz68GvPmS0d+J3wz4QjujuZl
	KLCMRFs0OnwbyLeg1XSEnuIA21OO3dLet1Tc3BmgZGqN3Jm7LPh05V1Z0NbkLZWh
	I6Ku4DNJA07pPrUr179BdqnHp68BQwdIlvZtDxzmjQrhGuQiMoV8ynniqzX1pFaq
	j2KelKK4eBONxuHXtVIdgI6Ars/v8WGxfuu9gb5bIovsLeNt3M8y0vMPWyqUxrKe
	VF55QA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fy8vhjb1y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 15:42:23 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-90410c668adso21312566d6.1
        for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 08:42:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1786376543; x=1786981343; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ykiz7/WLXu1Pqam7m96oprgwnXnPFLvlLQkcUT1pgeA=;
        b=WERRwuRu6i+qDg8K0yzK64CFP15Kkg6/7A7q5RgrjzQ7SeMEIYGefVsyhhy3SaKptx
         As4q/z79XweACdTj+mm05wyesWL399Ys7IhcJq8Cf7ojnFxwhYjT6V+kVg1OLykGmLTS
         F3h3bNaqVbb6Js/40C3dW+AwIU+r/8UhkVkM9KAVdrIDpMD/mtBvKomnlCFDJZ6FNEW6
         QnZWDMBx9wi7fGfzNlpHebOROllaeOauj/xurdS5Aq8v+ln8URY2jNcnNk241YMfeZuD
         2KRDWge/lTaQg/BEPjqbeOUOapiB4f21CMXIRgemBMKF3tlb7FAovPfdPkdHxBjls9cH
         DXVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786376543; x=1786981343;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ykiz7/WLXu1Pqam7m96oprgwnXnPFLvlLQkcUT1pgeA=;
        b=BQ1YO9de8o2OoL00gI+I7IuM/WJWqY+D25CsYaV9DmoxrRKpUESaV+RNoiCyhzBdN+
         AlpH7BJWbA4UZep/P6oLIt07IN1/KRbaBeOmsWcZFRJpMS33NSqqsr6x4c/n9EiPKV1x
         8XKEmDBrSnOH2VFXqMNz/7eoo+Zf2zs3SXYiJkt5eMBGR4MqAtCYTZKmea9ioNuKjKDq
         sF8hjFqPnH4pmZezX1R3VsWzLgMnFKscPm3wafuXh1XZF6sT+UMAux75ooDu1fYtaBKv
         fyvpMv1D1lmnnMcevZkqnKGe3AKwpSIEGipzjLS2IIyAjBqS67eZxOS+AB0xlyZ7pGlt
         fFUA==
X-Forwarded-Encrypted: i=1; AHgh+Rp9mVd0R3ggVzUV4i5mA0O/pl5M5YAR/st4U42EfiiJGQJAYpElTWTe28XjitsZnwVhxI9JCdR5zzQ=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywyy7eCaU8cdsXEcx+HMLx1e6K5OSksGBZoe4dxZ+6oOzzNvwRu
	RJD3dmSE5p8llfgup4rx9eIl1PoB8LxSRxSRFo0/vHhEC/9vQHGCLBik+rFbcef4JHV6hhzdHxy
	W/3r2KeuQQfW6Jdv4JnQk+cazoETIp6qwkY83IbdXNhw7ghF3l4kTwwFnQyZYtRsKZqw6
X-Gm-Gg: AR+sD13owgQBEvQ06geJVawY6Q0p7uRkf+vYpRTiaJ3EShK08ESnayycfScG72x9H39
	rBqiRG6OVZOSGEA1q3wWWhNdDKcT8EYW7m/1tun4AqOgJPR9mJX3Aw9Ef9X4zHfliJ2CBLmAVtn
	L4SLpqlOy9wv8Y46X0JIgNA2fzBRTEi8liuNihlMyCrXyAUc03RN44quYxtbF0jPfcGHo55Nqi0
	Ab4ob8/tfI/TofnChSMOoLH9OF9hGkwYfASC3pKGh1zrN1g3yxK82gbO+RsEPoXVHnau/5f1l26
	Ga+GAXF5djDVrd7STIborM6HPz8VPZlixcSAxtweKBhianIC2n3EpAek+6nBsXvt/nhNJXa0h89
	cdV3pJQHpUcrZdfFo8ts2HlQJgycWY7OgYkQxBvGmPTlyyvRz9tUQ5OYM4+bKSNqOL91Z4ZGOT7
	FxePbLOWeULKK5Pg==
X-Received: by 2002:a05:622a:593:b0:51c:21d1:3852 with SMTP id d75a77b69052e-52ce5f63740mr455151731cf.5.1786376542484;
        Mon, 10 Aug 2026 08:42:22 -0700 (PDT)
X-Received: by 2002:a05:622a:593:b0:51c:21d1:3852 with SMTP id d75a77b69052e-52ce5f63740mr455151151cf.5.1786376542016;
        Mon, 10 Aug 2026 08:42:22 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b3056f1bbdsm2071673e87.82.2026.08.10.08.42.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Aug 2026 08:42:20 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Mon, 10 Aug 2026 18:42:09 +0300
Subject: [PATCH 05/10] usb: chipidea: msm: support the HSIC asynchronous
 wakeup interrupt
MIME-Version: 1.0
Message-Id: <20260810-msm8974-usb-hsic-v1-5-e5f93ea76ffa@oss.qualcomm.com>
References: <20260810-msm8974-usb-hsic-v1-0-e5f93ea76ffa@oss.qualcomm.com>
In-Reply-To: <20260810-msm8974-usb-hsic-v1-0-e5f93ea76ffa@oss.qualcomm.com>
To: Bartosz Golaszewski <brgl@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Linus Walleij <linusw@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Xu Yang <xu.yang_2@nxp.com>, Peng Fan <peng.fan@nxp.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Peter Chen <peter.chen@kernel.org>,
        Pavankumar Kondeti <quic_pkondeti@quicinc.com>,
        Stephen Boyd <stephen.boyd@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-phy@lists.infradead.org, Greg Kroah-Hartman <gregkh@suse.de>,
        Peter Chen <peter.chen@nxp.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2640;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=zF09fnAjSPFGZsQfp4IpqRrDJjz7DPLi1N/LYmSBNLw=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBqefFQprX64U/4DCFpJiS14RtCBnDgkvwJpjJKW
 lTiyOQZ8kyJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCannxUAAKCRCLPIo+Aiko
 1W2AB/4guuqVz3+TvJnK5H8xdLnO5BEYGr+vZ7ygvrf0WZfuL4F1BLUJwTmRESF5lD/QlFQZemG
 IwfL5qsbQDRHMZhbNYcrgh1msxLpuSwmO+RCqWlG6mZbMiwHGCFfYq9Xa0TEoE9A7Cwi9x9KDD8
 Tm/0C1wFxNGJf8uCRkSsy5efA8Ijx5smouZxEsNmJrQJ8zyDQ4c/n5UwtyOTl8RG1NwpBV8z//t
 im+bU+E6xQeyEb9oMQ/BOjcG0xg8uOP4bXVCcn9B4pdveKZv3UN3yGCbHYbkK8frrxGdLmJDe8n
 t4bCyvugfQo97me6aPjdAhjJgTH8IhMsPP8mTtvXY4fZmCLL
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=MMtQXsZl c=1 sm=1 tr=0 ts=6a79f15f cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=EUspDBNiAAAA:8
 a=a4gATcTAGDG0ZWSRqCQA:9 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-ORIG-GUID: YNa5LU6ZhUrzCTXsE5ly-XxouBjl-lRh
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODEwMDEzNSBTYWx0ZWRfXxs6PnseTMBqo
 Giw71TEaEkjMxuG8TkOQqXionVKG+oSu3tRf4Ia9XpmYvskTxtHv0joBFt6d29M5HjlwIKB0+Rj
 AyY9Vq58yRhiKuywsCV99bAdymAwMdhhmxU1lvII3+4H/w1pmOr8IRrk734244MX5kEotmLbCsB
 nz6PNVjDsKZPpv5HPhmbZZWun6VuVUSxYZpJZVZazmaiK2/8Gn608pS1f1UIG45m8PBx3OBoz0l
 iiwEbYax0wBjx47AOBcReQIydH649+tdbElRRv8Em/+u2WOvLsDrm2lCNONYkGzG806E+ohZNKK
 sK7x+tVUEvB/7VCgaDbqD8+aAovXjtwgn3QacPlcVAxuAPidm27wTviLrBoSbemx9+f21C0PqSa
 IBy8IAlV5TjrUa2lyH+H7MQvuAIxoiKLnlw4AMny5trvm+3XBQcfZf+cNv0khC6WDtZPhMR3n58
 aHvHoTamJTUFPbRb9XA==
X-Proofpoint-GUID: YNa5LU6ZhUrzCTXsE5ly-XxouBjl-lRh
X-Proofpoint-Spam-Info: AW1haW4tMjYwODEwMDEzNSBTYWx0ZWRfX2/rjqCqBhLrS
 9X1gcULV5vG8u/6ucui31oLElyBL/82tNWvlWbDLcZvXzdk7uHkgvn8MI7UuooztQqeFQlypPAg
 ststOFP9xg653tC0uht6roZ2UHL9JtE=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-10_03,2026-08-10_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 spamscore=0 impostorscore=0 bulkscore=0
 priorityscore=1501 clxscore=1015 lowpriorityscore=0 phishscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2608100135
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260810_164226_278123_AA289B10 
X-CRM114-Status: GOOD (  19.07  )
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

The HSIC instances of the chipidea controller runtime-suspend with
their clocks gated whenever the bus is empty. HSIC has no VBUS-style
connect detection: a device (such as an onboard hub coming out of
reset) signals a single connect event, and if the controller is
suspended at that moment the connect is never noticed and the device
never enumerates.

The hardware provides an asynchronous wakeup interrupt that fires on
HSIC bus activity while the controller is in low power mode. Pick it
up as an optional second interrupt and attach it as a dedicated wake
irq of the core device, so the PM core arms it over runtime suspend
and resumes the controller when the bus reports activity.

Assisted-by: Claude:claude-fable-5
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/usb/chipidea/ci_hdrc_msm.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/usb/chipidea/ci_hdrc_msm.c b/drivers/usb/chipidea/ci_hdrc_msm.c
index 3ab3daa78e34..e28ea87f9898 100644
--- a/drivers/usb/chipidea/ci_hdrc_msm.c
+++ b/drivers/usb/chipidea/ci_hdrc_msm.c
@@ -4,6 +4,7 @@
 #include <linux/module.h>
 #include <linux/platform_device.h>
 #include <linux/pm_runtime.h>
+#include <linux/pm_wakeirq.h>
 #include <linux/usb/chipidea.h>
 #include <linux/clk.h>
 #include <linux/reset.h>
@@ -173,6 +174,7 @@ static int ci_hdrc_msm_probe(struct platform_device *pdev)
 {
 	struct ci_hdrc_msm *ci;
 	struct platform_device *plat_ci;
+	int wake_irq;
 	struct clk *clk;
 	struct reset_control *reset;
 	int ret;
@@ -261,6 +263,19 @@ static int ci_hdrc_msm_probe(struct platform_device *pdev)
 
 	ci->ci = plat_ci;
 
+	/*
+	 * The optional second interrupt is the asynchronous wakeup interrupt
+	 * of the HSIC instances: without it a bus connect arriving while the
+	 * runtime-suspended controller has its clocks gated is never seen.
+	 */
+	wake_irq = platform_get_irq_optional(pdev, 1);
+	if (wake_irq > 0) {
+		device_init_wakeup(&plat_ci->dev, true);
+		ret = dev_pm_set_dedicated_wake_irq(&plat_ci->dev, wake_irq);
+		if (ret)
+			dev_warn(&pdev->dev, "no wakeup interrupt: %d\n", ret);
+	}
+
 	pm_runtime_set_active(&pdev->dev);
 	pm_runtime_no_callbacks(&pdev->dev);
 	pm_runtime_enable(&pdev->dev);
@@ -279,6 +294,7 @@ static void ci_hdrc_msm_remove(struct platform_device *pdev)
 	struct ci_hdrc_msm *ci = platform_get_drvdata(pdev);
 
 	pm_runtime_disable(&pdev->dev);
+	dev_pm_clear_wake_irq(&ci->ci->dev);
 	ci_hdrc_remove_device(ci->ci);
 	clk_disable_unprepare(ci->iface_clk);
 	clk_disable_unprepare(ci->core_clk);

-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
