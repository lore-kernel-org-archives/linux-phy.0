Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A686C7EE23
	for <linux-phy@archiver.kernel.org>; Tue, 30 May 2023 08:45:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XwgXJDMbYjDYhDT6lc1kNVkCpD9LDvQgi/4zr6/ZXDs=; b=jEkBjtF79HYZnS
	ju9/gLSb1TSmppIoysIgha5pKhxStcDGoAiQ2JrWNw0ec1Bo9WZjsMlAL/TilmmJ0/XqzZTE6dLtU
	CLgH9ZHmW+7rGVtP+l+kSeR5AYJ6iA/HC/f0hW1mNpLhJknXthAmxV772bNvC40hRzEuWNfx22Do4
	NIXi9ZK03lXI3beDwNbnM9ZdAMpNR0ZB3agiHMXC9+R/qh5gsQi6z1JpYuLGiIyv/1jSMUqi4emW5
	+p510F/yPGDYaj/7Jy7ksJVYHhko6/jb8dBSuk+ADqST0fBSNOksZIyVgN4uIcQafZU+QHwS90XoA
	4l5LLYiIrk3gY8OJ0YOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3uyw-00D0VY-0B;
	Tue, 30 May 2023 08:45:30 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3tw9-00ClAn-1W
	for linux-phy@lists.infradead.org;
	Tue, 30 May 2023 07:38:34 +0000
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-30aeee7c8a0so1059375f8f.1
        for <linux-phy@lists.infradead.org>; Tue, 30 May 2023 00:38:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685432312; x=1688024312;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DzGw3mnXKJmEBxB/ZGH2LxB1IwHqbuKVGACW14o5hFY=;
        b=jaSvKiIr2GX85xMjOgkTYd/HWVGIErooo3BURQ2chRmHroR3WP6Ikhi0FAFeeT5Lys
         jXW6AwnBAoN46UdpnHDy7IEY74KLt5biienTFYOyY/jFc5y53K3tiMW4+N+FmiWR1gQc
         bF1vbW6Q1tCC5Jh5O2jT3WI9b+YCSWKPHnNH5ump3ZdyPlcB3UbWZS1B/jmouzSKKxl9
         OZHOe343iv7+FvsfFBlo/QSrumwSFfu+uBZutxNs+0fMGnXySL58ysc+bP8k8hPdDfNi
         GHmxV9RG4qXK/bbbeoTpReGiNX6B4aYVFa3nDsh4sGAQb6mIrmjUcQ9BFb6zx/DrN5gt
         dWjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685432312; x=1688024312;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DzGw3mnXKJmEBxB/ZGH2LxB1IwHqbuKVGACW14o5hFY=;
        b=fLaBEsdEM/rHxlogyTxhoZ1JHT+KaUyCcLwNSkSg34qBMaIWqYp38Y+aKyrzE+/28N
         fhKe3+HYUrFKjt/MYpyZZv7XgPlExwlpARyVO8Vn/E8xUtM6BlwH/lVfqcjdqhckHpm7
         DMgkgPzE6EJcut3aXZI9qhaZZxhpHv0z45f7a1Du1nVmNfvJUyd6MzOw6rHsjNna3uL+
         25m7m8JRG1HhjiARBTBQkmmmBQWG4Hl0dI9UehYKzV7EHdzXzh6xZvy+e3OTQgn2h7ja
         MUlN06tAFitN9I8A7MaGeSOfZqHCRm4ZBuAhrj6sG80R5SdspAk5QYSEnzw0n/WGK9Ml
         sz2g==
X-Gm-Message-State: AC+VfDzMurfcetjQL6gGtAbJ8+nvjehjJT6z1BDcBh7SYN596k9xIfcg
	NLuup0k3c1rbgzKZYv5Au5cnhg==
X-Google-Smtp-Source: ACHHUZ77/qAdFM2wzyEMZZRv9RkbZMbz2osrr0BTQq8TerRslhCr1N4wB1ijOVmrPptU+vS84dzTrA==
X-Received: by 2002:adf:dd92:0:b0:30a:efcc:f89a with SMTP id x18-20020adfdd92000000b0030aefccf89amr1159782wrl.2.1685432312266;
        Tue, 30 May 2023 00:38:32 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id m4-20020a5d4a04000000b003079c402762sm2312013wrq.19.2023.05.30.00.38.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 May 2023 00:38:31 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Tue, 30 May 2023 09:38:17 +0200
Subject: [PATCH v5 16/17] dt-bindings: arm: amlogic: Document the MNT
 Reform 2 CM4 adapter with a BPI-CM4 Module
MIME-Version: 1.0
Message-Id: <20230512-amlogic-v6-4-upstream-dsi-ccf-vim3-v5-16-56eb7a4d5b8e@linaro.org>
References: <20230512-amlogic-v6-4-upstream-dsi-ccf-vim3-v5-0-56eb7a4d5b8e@linaro.org>
In-Reply-To: <20230512-amlogic-v6-4-upstream-dsi-ccf-vim3-v5-0-56eb7a4d5b8e@linaro.org>
To: Jerome Brunet <jbrunet@baylibre.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, David Airlie <airlied@gmail.com>, 
 Daniel Vetter <daniel@ffwll.ch>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Sam Ravnborg <sam@ravnborg.org>
Cc: "Lukas F. Hartmann" <lukas@mntre.com>, 
 Nicolas Belin <nbelin@baylibre.com>, linux-amlogic@lists.infradead.org, 
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, linux-phy@lists.infradead.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=833;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=fIWufPqpiAaBMP19Qwx5MHQ5YAp+jh4vCf4MBkZNrjM=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBkdafj8mU+WLsf6CBN4sbskK8u3Jc3USNNMUE0iCYF
 DXtlAPCJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZHWn4wAKCRB33NvayMhJ0UjwD/
 4lK6RBrPN1bgsAqClEb/SiEYIPhDC9AWoFJFret61RyB/QGf7FQjlZqw1uKS/OTK5I/fbVedds+mcy
 ZEzbMxwGk3yxnDpv2r24Gz4pZWCcxo5wQ5Z6v1TbN9/1JGOExKHQG6jHyEkJOAecWX9nyAT5LYhe1P
 KdVhbvB/pV/munVEeeqE88eS5eyaTjBPWEoSOxmxIUawx1SulT2bivNuByNAwC/lIvV+iPe4T5uYz4
 /XNjaH/N1/5UKT0emdVvZeJXu4ghWm7M6VCk8lywau7+sthVaFbTBV9hyQ+HWsUCXVqnXNH4+G5aE9
 XI3ZtIhT6dmX1hdZyBnwFI+7TP8ykE76+4VAjfJ+5Y+vT7cK+vdEAAZFiUq5PcCUxw/gJQ1d7z2/Im
 TDkf8F3CaumwjBVmdtJplBfDT5yQZTtoxC3UfFCANjdx8B/OHbcfVfDEF90wxuI/eSVj+TZXpQar+y
 ZylVRPz2yN/BeWRxugLbvWn34tBIYmSRhjyRg+BkMN//awVAQKqbbjnGMC4mEhSRhZld9SkKbOxWat
 fY8q6AvNyIHbHiJTExqfOZ1/hbv3LNdSPOnKGyHy0pLcN08K9sVJgfFPdMFYm89BdyYRGl6fsH/7v+
 IEJTHUoZDileY77ataCJcYv3BVPHK6vl+RiwUG8GOnroH2we/u5bAb8GNcwg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230530_003833_509955_4FDD72BE 
X-CRM114-Status: UNSURE (   8.10  )
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

The MNT Reform 2 CM4 adapter can be populated with any Raspberry Pi CM4
compatible module such as a BPI-CM4 Module, document that.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 Documentation/devicetree/bindings/arm/amlogic.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
index 08d59842655c..c237afef5093 100644
--- a/Documentation/devicetree/bindings/arm/amlogic.yaml
+++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
@@ -163,6 +163,7 @@ properties:
         items:
           - enum:
               - bananapi,bpi-cm4io
+              - mntre,reform2-cm4
           - const: bananapi,bpi-cm4
           - const: amlogic,a311d
           - const: amlogic,g12b

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
