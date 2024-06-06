Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA40BC27C55
	for <linux-phy@archiver.kernel.org>; Thu,  6 Jun 2024 16:08:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LE0KYJH071Ta/CL66ZR9J3xQPjVufZ/csq4aqW6CNk8=; b=hhtaobxB6GWfhd
	lI+IUJMVc7Ecxjja6HDPw/wcXElvMSoGOIIsgxGay1Gj6N5tp615tcZ02EW0yTpzS7wRqVuK+pqQh
	rySvOgX4EkWI/mtGUz/qt7VnvfLaHDcwObzZwCaUyL/mMAvnWr34fAuyWl4K9nMolTMFT513ouJ3y
	A08Tpgak++1hASb89w7bJ4g7w7Bfp+/mNQx0VGhaAUuwnQ5KoU/14O/4psPm6lbojD44pf0Ds8ScV
	QfpKcjLVmyli7La04SaDgFuuma8XA/Bzj4K+AHWEhctCAabtZ5KRMPE94MgyOWHW8Mkh+beJQkiTE
	mqxYVjDz/sAbq5evohhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFFej-0000000AQS9-1Ty2;
	Thu, 06 Jun 2024 16:08:01 +0000
Received: from ns.iliad.fr ([212.27.33.1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFFee-0000000AQOm-1dF9
	for linux-phy@lists.infradead.org;
	Thu, 06 Jun 2024 16:07:59 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
	by ns.iliad.fr (Postfix) with ESMTP id C7F0B209DA;
	Thu,  6 Jun 2024 18:07:49 +0200 (CEST)
Received: from [127.0.1.1] (freebox.vlq16.iliad.fr [213.36.7.13])
	by ns.iliad.fr (Postfix) with ESMTP id B41DB200C0;
	Thu,  6 Jun 2024 18:07:49 +0200 (CEST)
From: Marc Gonzalez <mgonzalez@freebox.fr>
Date: Thu, 06 Jun 2024 18:07:47 +0200
Subject: [PATCH v3 1/4] dt-bindings: display/msm: hdmi: add
 qcom,hdmi-phy-8998
MIME-Version: 1.0
Message-Id: <20240606-hdmi-tx-v3-1-9d7feb6d3647@freebox.fr>
References: <20240606-hdmi-tx-v3-0-9d7feb6d3647@freebox.fr>
In-Reply-To: <20240606-hdmi-tx-v3-0-9d7feb6d3647@freebox.fr>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, Arnaud Vrac <avrac@freebox.fr>, 
 Pierre-Hugues Husson <phhusson@freebox.fr>, 
 Marc Gonzalez <mgonzalez@freebox.fr>
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240606_090756_667473_AAD586D6 
X-CRM114-Status: UNSURE (   6.21  )
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

HDMI PHY block embedded in the APQ8098.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
---
 Documentation/devicetree/bindings/phy/qcom,hdmi-phy-qmp.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,hdmi-phy-qmp.yaml b/Documentation/devicetree/bindings/phy/qcom,hdmi-phy-qmp.yaml
index 83fe4b39b56f4..78607ee3e2e84 100644
--- a/Documentation/devicetree/bindings/phy/qcom,hdmi-phy-qmp.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,hdmi-phy-qmp.yaml
@@ -14,6 +14,7 @@ properties:
   compatible:
     enum:
       - qcom,hdmi-phy-8996
+      - qcom,hdmi-phy-8998
 
   reg:
     maxItems: 6

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
