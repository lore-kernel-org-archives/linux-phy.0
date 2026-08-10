Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED545C5AD55
	for <linux-phy@archiver.kernel.org>; Mon, 10 Aug 2026 15:42:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dtu2/WKWG2Vv80Ch3Z3sF5ogUDZKyku/RmjbWxLXC4U=; b=fIrgin+rKSjsK7
	LSR02j84T2NjxI7lHRTp9kRDeQr+7RvGu3CQYDQjnsM8JeaNiarf6nUD0r+sv6c+qSsNzj4Brk9Sg
	76jAyB11jNoagjk9K4aSbae6NVodBT3D9YqdGB97TNomvPlfmmvoXn0FWFR9Nua3Q+q4BCLnPsOM2
	e324voo09hE+T3Ij3K4eNSJ4UHNiIu3lZlp61Mgcv7SjukwCKaZXwrcCl7jVveBz3PrEVvbfM7Onf
	mS/dBwd8wbIcM7b1Wd8xYlnNI3igGASJ9YHalPb0OiYFHt6pt4sNqYioRApfUXR8LylrhEMm41/B0
	cy2urUQX791ygdyJnpaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtS8y-0000000CIXc-2q9k;
	Mon, 10 Aug 2026 15:42:28 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtS8w-0000000CIWT-10Jh
	for linux-phy@lists.infradead.org;
	Mon, 10 Aug 2026 15:42:27 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67AFWGC72090636
	for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 15:42:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GCrGDHyDrQa95r9/bHjjtu86fmQgfeBAEBBhKsMFLXQ=; b=c09Tmmx752QBOxka
	QruGFk8j0cco/ou2TFU+r7Mm7vIHwXva7N1cvwsrPPeGtdPb2Zx4QX6jn/z+rRGe
	lmTJgrJ+BPzUYNHfzazialSmqEOsWI2pxPE9gzWPN/WH9+sY1kOxAbxUQAOYMX4f
	mJqcQ+HoEW5dfQYD79VOxrTrVIr03RvSOiv0Bk3E1NVGH0H3+UsU91aiGWqrZrY6
	h1bCL+top/z/VE7fmcWdhdeOf0WXZXjVTGfb8tNA1+epGVvZl8LXkwwHU3VoYrQl
	6YCUdBnITbwlKAFlklcM2nstm3hGhzxLqbzP/8DqfBVb3FiWpkout2iHX6b9rskC
	zyZ3vg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fybh59qce-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 15:42:25 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-51c1a9764f0so20351151cf.1
        for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 08:42:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1786376545; x=1786981345; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=GCrGDHyDrQa95r9/bHjjtu86fmQgfeBAEBBhKsMFLXQ=;
        b=LhTeQJ3AjVgYr7bXHXukIsVrzS0ptS0bJ7SkNGCQu3DbyvVecExoakWIodA65w3zzn
         jYITJZOgnJAhlvkCmi5m6WOi+BrNy3XD+/QE0D4OeTJv5W3ZknRc73f0narvAK2DtM3u
         E0oz/fjH0tGl9LHZ62ST4h9hMf4DLsV7184aZrBBKaMCIKmUTF/rCLJ4h28FqgGYiVfk
         7YG/l37TFt4jvUk0XfAZ/1DB0qZwfAP/yHqOCrIe1um6xKsRR+xxrm8btDXTbURQhtkc
         GTywzs0aIlmcoZSmSpwfi+odpC7Ny1GKdO3QDhEafwj/k84SQYDBGKe+p4cQEj99Q6xV
         yvsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786376545; x=1786981345;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=GCrGDHyDrQa95r9/bHjjtu86fmQgfeBAEBBhKsMFLXQ=;
        b=kH8L2dC7PCfTR9lVufnDJiB0vNCAg3y7WodAh6HlmcnG23NRq2MXFvrG0pYwsxQZGL
         9C6tKNYu/NSLJDnRgR/ii32mW2GRe8pqGp7dIKjoFoj7P3Xi8HPR44Jdwre2H2cpHFQv
         8rZ1ms5pdc/ee5g773WaNPInT4HOqWAe871qZA1vtyufkH80yVCDkgSFQqDE6h//3djl
         fOpehOxn1zDOHEZUG7gViNRDeItmoJU2kBu7/MBhI7R1XxVU7EvLa+AsgEYNLdH09RpC
         ry23T790AWqAtKxXBO2NbJFJihrdJS6RJQLivctcKPSsavycIkYeZx4D7Zfe0Vk6KKvO
         TDSg==
X-Forwarded-Encrypted: i=1; AHgh+RpeG6d1kjasAHhmt2b8n1Z1ZGOmIO9BMqx2aYjvjsidiDwd1/wxVNDQ+b9+wGfiBBxgC5W/EClXtZA=@lists.infradead.org
X-Gm-Message-State: AOJu0YxR5+1klPQrOqUh8OV7GaCzeBOeklzx1fQvkUjPm3rEhFD1B2O7
	z69aef9tDAaXmVd47gN6lsjnOrWS/XR8cq7QNIWCoFv1FQkCDsdprddK7IMJmT13PMQ8VjZacq9
	mJTPsP8F+HCvW7fkLnAh34RVmlIoD4kPDHH4RQg5liA40ZaKafBYNTYeQqSTzDZdR2qqs
X-Gm-Gg: AR+sD12sT9Si89l/5pjO+K/axTR0brWP8tZpyHZC/aUciFj6ftj2ro1xSl8o/GPwJ0/
	hu/itNoNkRFvyp0pas0k3EZeO6dOp4rJL9hicBs6o2OxwrAa5SeiSoHNis3ZpkuYZ87xD6DCzyP
	7UDcGrHFbxYyuZIHngz7a7C35FbllkfZDhEvee4tfSOO0Cdip8lnurUlM3wRTBFVc1eazY+/mjf
	eYG5q3SHKLx63UuyXA2Z+6sv1rMoCOZcq6aLDuBhTyu9+r4kupLhuNLFxfGTY0bJ0MFXFg7aRnz
	MyGjEjaXIrcZlezp92JDelQZmMhOog0Sgi9aYnJhmAw+/GpAlU6XbvY51lqGqqKKyLDTCBLICwM
	KryGJXOSUsuHDGYrTavP/Kz8ZpgXXEfoKdK78AuDEErYG26sqCZhwe0HO16Uu7jekHfNWka47uh
	dVEqsu3WU4PIe1qg==
X-Received: by 2002:a05:622a:58c4:b0:51c:963:cafc with SMTP id d75a77b69052e-52d20a814eemr255582071cf.41.1786376544553;
        Mon, 10 Aug 2026 08:42:24 -0700 (PDT)
X-Received: by 2002:a05:622a:58c4:b0:51c:963:cafc with SMTP id d75a77b69052e-52d20a814eemr255581111cf.41.1786376544064;
        Mon, 10 Aug 2026 08:42:24 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b3056f1bbdsm2071673e87.82.2026.08.10.08.42.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Aug 2026 08:42:22 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Mon, 10 Aug 2026 18:42:10 +0300
Subject: [PATCH 06/10] usb: chipidea: msm: keep the glue device
 runtime-active
MIME-Version: 1.0
Message-Id: <20260810-msm8974-usb-hsic-v1-6-e5f93ea76ffa@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2213;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=W5fwrw87A/zYMZyvs0ZH/Ywonomd67B2W25bvL7eGxM=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBqefFQhTQDcU2q5OpKlPcQt9+901ij4/eO0pNy/
 HSEWtd7m3iJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCannxUAAKCRCLPIo+Aiko
 1atgB/9L0zN0A8qyBtwd82vNyEPK5KczZuUzbj/WjMLPPb+4l0Q3ash4UwV7mMg5NN/ewuxYNK/
 lL6Ywgcv+8x4aToz+jDBwPPDYjmzgBezMgBtUW22NvPUG6+efLudrkNisso2Au+ATDaxP6BAcce
 kkpONMN8GRn9mrLWwGCMmROlJslpvJSeGzvc4nFbtku9clhrJKi2mHQFeI2lBzBIaGBH+K12Mk+
 Mn0hmMZCBnyZ/bvBGVA20M9wIuCyJXgRDwIpFTldc0FFhhwuoSRIB8HE1wWVoVzMZ/Q3twkGmxR
 76E4RQOFwkp4nJdrNElE2LUMNEJzBT1hBg9xYM0eSRC5B2qH
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=O4YJeh9W c=1 sm=1 tr=0 ts=6a79f161 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=EUspDBNiAAAA:8
 a=Gq4z8NyD3fEPJbr1v9MA:9 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: xCk4rPJJRl4p0dwaxDyIT_R-Aiti-YNV
X-Proofpoint-Spam-Info: AW1haW4tMjYwODEwMDEzNSBTYWx0ZWRfX8eTVXxo+a2bV
 ZfcSvBcDcnDj/fya8EN86Qk48+wPzuhKgAa9rxvgDvRbwS2NIvsuuSZ4nQnVTOy7o0e7Vqya2lb
 3Zp6cWEUmglUcbcMegTqDOQjwUBaQeA=
X-Proofpoint-GUID: xCk4rPJJRl4p0dwaxDyIT_R-Aiti-YNV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODEwMDEzNSBTYWx0ZWRfXzXTVqyvpybT9
 mbMPM9BGSUur6MNEIRlyF+DI4TeESjzlYz91s7KN8qX3ZYaK1lTnRZhS5aUSNQiBcw//rIv0611
 zh0YxTNyJnmG4w4Z59/1EvMozhwONRov5n+z7x+mchhmsu4SG3W0OmiEqmpt2SFB0u8vxnxUkE9
 k+vE18liNeoUZrkLB/51cL7Re8MxeFojr+2jcLQr2lQmzcfwQAEu6cXv5BfN+moHHg0i9RJsNVp
 UorGdJbzTD2kRF+FXf0PZNEstUKpCsW307u3kTIKJ/zs4y9XQ/Qp11qZxRCufXOdCeRzlpKdoQB
 KE6iadIUUFWbaQAFeoK4vWTs/sIcPP4x6z2rzk3vR0/8oMUS4rCRroBIvusSC1iwjAq9PscEew6
 Mo0EYtwnrjYa42temtoJy05X1XKSwdDViSQZpMQ6Fr72QwNDe+IqP6lSDIQ83Obz9jcDOB1dfvg
 j8jXDruipwJQWbdlUxg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-10_03,2026-08-10_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 adultscore=0 clxscore=1015 malwarescore=0
 phishscore=0 bulkscore=0 lowpriorityscore=0 suspectscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608100135
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260810_084226_287238_3A8DDD88 
X-CRM114-Status: GOOD (  15.69  )
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

The msm chipidea glue enables runtime PM with pm_runtime_no_callbacks()
and nothing pinning it active. Right after a successful probe the
driver core's pm_request_idle() runtime-suspends the glue (the ci core
child has runtime PM disabled, so it does not hold its parent), and
when the glue sits in a power domain - the HSIC instances live in the
USB_HS_HSIC GDSC on msm8974 - genpd then powers the domain off
underneath the running controller. The EHCI register file reads back
zeroes, an onboard hub's connect is never seen, and subsequent bus
accesses into the unpowered block wedge the interconnect, eventually
taking the whole SoC down.

Pin the glue runtime-active so the domain stays powered for the
lifetime of the controller. Proper low-power handling can later be
built on the child's runtime PM together with the HSIC wakeup
interrupt.

Fixes: 2d0cdcc5a0e4 ("USB: gadget: Implement runtime PM for MSM bus glue driver")
Assisted-by: Claude:claude-fable-5
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/usb/chipidea/ci_hdrc_msm.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/usb/chipidea/ci_hdrc_msm.c b/drivers/usb/chipidea/ci_hdrc_msm.c
index e28ea87f9898..9a9410a814e5 100644
--- a/drivers/usb/chipidea/ci_hdrc_msm.c
+++ b/drivers/usb/chipidea/ci_hdrc_msm.c
@@ -276,7 +276,13 @@ static int ci_hdrc_msm_probe(struct platform_device *pdev)
 			dev_warn(&pdev->dev, "no wakeup interrupt: %d\n", ret);
 	}
 
+	/*
+	 * The glue owns the controller's power domain (the HSIC instances sit
+	 * in a GDSC): if it runtime-suspends, the domain is powered off
+	 * underneath the running controller. Pin it active.
+	 */
 	pm_runtime_set_active(&pdev->dev);
+	pm_runtime_get_noresume(&pdev->dev);
 	pm_runtime_no_callbacks(&pdev->dev);
 	pm_runtime_enable(&pdev->dev);
 
@@ -294,6 +300,7 @@ static void ci_hdrc_msm_remove(struct platform_device *pdev)
 	struct ci_hdrc_msm *ci = platform_get_drvdata(pdev);
 
 	pm_runtime_disable(&pdev->dev);
+	pm_runtime_put_noidle(&pdev->dev);
 	dev_pm_clear_wake_irq(&ci->ci->dev);
 	ci_hdrc_remove_device(ci->ci);
 	clk_disable_unprepare(ci->iface_clk);

-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
