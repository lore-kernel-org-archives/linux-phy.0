Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55E3EC369D1
	for <linux-phy@archiver.kernel.org>; Tue, 22 Apr 2025 21:37:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F3+7BHP4vLbd9PMg4NsVS+Q+/hYW60LYGO9oKABPo7o=; b=pJCpeAgA5p2d8t
	7nEEIjk+kEej3uzJKHYFCk2B7kv000VZEXTeqxfrN0ohnrh/nHGCjlnVeapjsK5t3LTvwgyQjgJoQ
	hHIaKgwyGZ0ZXnk3w0/E8X2OIzyWg+Gr023V7RHOy2xY/VteBNxZBjmbZA8fYJr8aUCUIVtViLVlG
	L+nlQqIlLbqLgv+X1NO8DLO1ErTG/HdAY1T6vG+2vuJtrbkI0GwNg9RMi2Z5CZ/1PfZ4+hp7qPXjK
	JJyHxztOrGC5dLBgKxLj+yKrhqzdzv3os+D5og+T2HXW+8axJbYlmC/jpjLV//rvuKV7OAtXAUdSx
	E+H2dT0qTum0DYvkJiJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7LIg-00000008blp-0OBp;
	Tue, 22 Apr 2025 21:37:06 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7K71-00000008R5B-1rkc;
	Tue, 22 Apr 2025 20:20:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=cnTWJxGqTEGpJxvIQTZysU+hFRUTHDoIoxR2rqPhypY=; b=KBUHg4cVkf1IOpZLVYw1iOn0cS
	kwFwkOY6TRlZyQXzS9oI2vDkV+vrMpHfpFxcf+Z7ZYnfvegKAENaVlnCTE08wHALfXlQ91U6AR9TC
	G87Xql2VTwu71iGytYsESDy0x/1poZhFC5dPP/1RntG/nEe/Gx0gYloJE42/eVDLgFEMfUv9ZoUaM
	9f3M6BeYyyl2FAo7WdkDjpLfgY6aTIHyv+nlaIrNwmLruhk/hq5N+RKwmeYeWgGLetWB2/WcSzLWm
	fE6r137vozuXOlVmVowfKlTHgFv26iaptU0RJbDKF3KCeVDUdi+qPy09C7T39JgPtt1Nb7BwDKht0
	ei0ogj6w==;
Received: from send151.i.mail.ru ([89.221.237.246])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u7K6t-0000000BJq2-03GL;
	Tue, 22 Apr 2025 20:20:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=jiaxyga.com
	; s=mailru; h=Cc:To:In-Reply-To:References:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:From:
	Sender:Reply-To:To:Cc:Content-Type:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive:X-Cloud-Ids:Disposition-Notification-To;
	bh=cnTWJxGqTEGpJxvIQTZysU+hFRUTHDoIoxR2rqPhypY=; t=1745353236; x=1745443236; 
	b=nTfKs7xyAulVILSuI26mHN+fc+VLNEOEZkXW+fJT7xZwJ05doEbou1/2E5w9kOdylUB8ZDjBYJF
	iskQVxqnwjiHeTXn4jesDPyCbhF80MRt0JoIlA26fvWTWlUX+nrgVvkG/mtRrRyYa2n9u7xyilP3L
	JsQ8QvvPRzOVBrew4o4=;
Received: by exim-smtp-77d8cdf77b-httmk with esmtpa (envelope-from <danila@jiaxyga.com>)
	id 1u7K6b-00000000Adc-1Rch; Tue, 22 Apr 2025 23:20:34 +0300
From: Danila Tikhonov <danila@jiaxyga.com>
Date: Tue, 22 Apr 2025 23:17:05 +0300
Subject: [PATCH 04/33] dt-bindings: mailbox: qcom: Add the SM7150 APCS
 compatible
MIME-Version: 1.0
Message-Id: <20250422-sm7150-upstream-v1-4-bf9a9081631d@jiaxyga.com>
References: <20250422-sm7150-upstream-v1-0-bf9a9081631d@jiaxyga.com>
In-Reply-To: <20250422-sm7150-upstream-v1-0-bf9a9081631d@jiaxyga.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, 
 Viresh Kumar <viresh.kumar@linaro.org>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Wim Van Sebroeck <wim@linux-watchdog.org>, 
 Guenter Roeck <linux@roeck-us.net>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>, 
 Jassi Brar <jassisinghbrar@gmail.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Amit Kucheria <amitk@kernel.org>, 
 Thara Gopinath <thara.gopinath@gmail.com>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>, Thomas Gleixner <tglx@linutronix.de>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Wesley Cheng <quic_wcheng@quicinc.com>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Ulf Hansson <ulf.hansson@linaro.org>, 
 Souradeep Chowdhury <quic_schowdhu@quicinc.com>, Lee Jones <lee@kernel.org>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Alex Elder <elder@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Avri Altman <avri.altman@wdc.com>, Bart Van Assche <bvanassche@acm.org>, 
 Andy Gross <agross@kernel.org>, Srinivas Kandagatla <srini@kernel.org>, 
 Herbert Xu <herbert@gondor.apana.org.au>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Georgi Djakov <djakov@kernel.org>, 
 Loic Poulain <loic.poulain@oss.qualcomm.com>, 
 Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Taniya Das <quic_tdas@quicinc.com>, 
 Sibi Sankar <quic_sibis@quicinc.com>, Will Deacon <will@kernel.org>, 
 Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, 
 Imran Shaik <quic_imrashai@quicinc.com>, 
 Mathieu Poirier <mathieu.poirier@linaro.org>, 
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Kees Cook <kees@kernel.org>, Tony Luck <tony.luck@intel.com>, 
 "Guilherme G. Piccoli" <gpiccoli@igalia.com>, 
 David Wronek <david@mainlining.org>, Jens Reidel <adrian@mainlining.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-watchdog@vger.kernel.org, linux-usb@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-mmc@vger.kernel.org, 
 netdev@vger.kernel.org, linux-scsi@vger.kernel.org, 
 dmaengine@vger.kernel.org, linux-crypto@vger.kernel.org, 
 linux-i2c@vger.kernel.org, linux-clk@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev, 
 linux-remoteproc@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 linux-hardening@vger.kernel.org, linux@mainlining.org, 
 ~postmarketos/upstreaming@lists.sr.ht, Danila Tikhonov <danila@jiaxyga.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1745353049; l=1028;
 i=danila@jiaxyga.com; s=20250422; h=from:subject:message-id;
 bh=FU6xazSJzLR7XlrqjrPJFBfAVNHXBk5j6Y0b3fDmsVE=;
 b=pJilMQMQfYaXC/LJGPuOKo4TNAmV+A9pYLwSTeFmkpKYXN/z+cQMOcw4v6abBLcPSBG2n8Pn/
 l8MdmTI19CxBR1VSszJjca412JEm+HAIeLlLSEOlhVg1lJDsmZ6zheO
X-Developer-Key: i=danila@jiaxyga.com; a=ed25519;
 pk=kkU4G47tvpSEUdBQEkXuWvTk/3WmGrVrdzZiKAKjBJo=
Authentication-Results: exim-smtp-77d8cdf77b-httmk; auth=pass smtp.auth=danila@jiaxyga.com smtp.mailfrom=danila@jiaxyga.com
X-Mailru-Src: smtp
X-7564579A: 646B95376F6C166E
X-77F55803: 4F1203BC0FB41BD985535D2C87FE65BB5D73E3D950B0DD10C757DC83125CEFA200894C459B0CD1B95D46397279889D57C591814E25D11F9F83AC75C63EA5607EA32EEC6BB77F3E79224C9A2F61B97637
X-7FA49CB5: FF5795518A3D127A4AD6D5ED66289B5278DA827A17800CE7FBB2043146276655EA1F7E6F0F101C67BD4B6F7A4D31EC0BCC500DACC3FED6E28638F802B75D45FF8AA50765F7900637F28F4AF03526AA8F8638F802B75D45FF914D58D5BE9E6BC1A93B80C6DEB9DEE97C6FB206A91F05B2EE60BA927579A7EA2E070BE324C7D3C4DF48F7C68FCB1443F6B57BC7E64490618DEB871D839B73339E8FC8737B5C2249A50BD5087FBFCDAACC7F00164DA146DAFE8445B8C89999729449624AB7ADAF37F6B57BC7E64490611E7FA7ABCAF51C92176DF2183F8FC7C015BBC38BE64FE4678941B15DA834481F9449624AB7ADAF37BA3038C0950A5D3613377AFFFEAFD269176DF2183F8FC7C02271980798FBD5E27B076A6E789B0E97A8DF7F3B2552694AD5FFEEA1DED7F25D49FD398EE364050F0AC5B80A05675ACD0A5971FBB7557E96B3661434B16C20ACC84D3B47A649675FE827F84554CEF5019E625A9149C048EE9ECD01F8117BC8BEE2021AF6380DFAD18AA50765F790063735872C767BF85DA227C277FBC8AE2E8BB07C9E286C61B7F975ECD9A6C639B01B4E70A05D1297E1BBCB5012B2E24CD356
X-C1DE0DAB: 0D63561A33F958A5EF2F8D31387AC5785002B1117B3ED696A7D7E4DB8DB39AD38B25839F35DFE037823CB91A9FED034534781492E4B8EEAD85CCBA673D36D1A4C79554A2A72441328621D336A7BC284946AD531847A6065A535571D14F44ED41
X-C8649E89: 1C3962B70DF3F0ADE00A9FD3E00BEEDF77DD89D51EBB7742D3581295AF09D3DF87807E0823442EA2ED31085941D9CD0AF7F820E7B07EA4CF414D640B656F64468B08D0901815A2F2A4A7F3851EC60573416DA7A93861D4962DC0EA915DEF7D0C68A835CA8743990B343F9F9FDB0505F70E280A9F3BCC449B7BB8725C88F47357EFF8118B638B08AA02C26D483E81D6BE72B480F99247062FEE42F474E8A1C6FD34D382445848F2F3
X-D57D3AED: 3ZO7eAau8CL7WIMRKs4sN3D3tLDjz0dLbV79QFUyzQ2Ujvy7cMT6pYYqY16iZVKkSc3dCLJ7zSJH7+u4VD18S7Vl4ZUrpaVfd2+vE6kuoey4m4VkSEu53w8ahmwBjZKM/YPHZyZHvz5uv+WouB9+ObcCpyrx6l7KImUglyhkEat/+ysWwi0gdhEs0JGjl6ggRWTy1haxBpVdbIX1nthFXMZebaIdHP2ghjoIc/363UZI6Kf1ptIMVS+uSU+BUhgv/Fa6i0waMbc=
X-Mailru-Sender: 9EB879F2C80682A0D0AE6A344B45275F2269F4137897263197B151A33FA7A9F8A35F51E26E469327E76D87DBBD3F212A2C62728BC403A049225EC17F3711B6CF1A6F2E8989E84EC137BFB0221605B344978139F6FA5A77F05FEEDEB644C299C0ED14614B50AE0675
X-Mras: Ok
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_212053_057200_8B54F219 
X-CRM114-Status: UNSURE (   9.04  )
X-CRM114-Notice: Please train this message.
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

From: David Wronek <david@mainlining.org>

Add compatible for the Qualcomm SM7150 APCS block to the Qualcomm APCS
binding.

Signed-off-by: David Wronek <david@mainlining.org>
Signed-off-by: Danila Tikhonov <danila@jiaxyga.com>
---
 Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml b/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml
index a58a018f3f7b9f8edd70d7c1bd137844ff2549df..da00858d3a463b43dab3d743de8e3a4b831292a3 100644
--- a/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml
+++ b/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml
@@ -49,6 +49,7 @@ properties:
               - qcom,qcs615-apss-shared
               - qcom,sc7180-apss-shared
               - qcom,sc8180x-apss-shared
+              - qcom,sm7150-apss-shared
               - qcom,sm8150-apss-shared
           - const: qcom,sdm845-apss-shared
       - items:

-- 
2.49.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
