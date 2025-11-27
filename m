Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC601CFD2F6
	for <linux-phy@archiver.kernel.org>; Thu, 27 Nov 2025 13:30:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=arxaOBeta/i3L4ZQTAm7TQMysa1vTQQDFuBTs8aAgqw=; b=17+8bsXGvJwldTvlWXsTfBnnaq
	siYuvB77WmkIn8GgE3PPJyXxNY151UzK0n9UDcuaZINZkUEeuNqWHlNcSXU4zhWcrcK+OZbubNmND
	1JGArq3V7Cbn6CwZ71egACv+4QpJoTYz7NC75+YiNCmh7l5i6O7k7tPjx2cScub7CUHaHH/bUV6vp
	gyoiqdgYesrjXirW4wYW5Z0Zw/ngGJ31RO0pKNQnFUxUBV5Vxcj3sprEAcMUejUmxv1NksnMzW73q
	P7eu0k9+KVnjy7e+C3c1hx48sIoFyWGC50Wx2R0JrPMb3a2O0LJ6X5RK7hf0GfGIzunUp0S4e34PW
	hn3eV6dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOc4y-0000000Ggb4-1nX5;
	Thu, 27 Nov 2025 13:30:36 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOc4w-0000000GgZa-0l7E
	for linux-phy@lists.infradead.org;
	Thu, 27 Nov 2025 13:30:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 4A914434E7;
	Thu, 27 Nov 2025 13:30:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EA2C8C4CEF8;
	Thu, 27 Nov 2025 13:30:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764250233;
	bh=Prjok+iXF1v1hGeCvqQIR+6Jng3EBvwwFgpQYwSmgbQ=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=eTlK3v2UNpOgmiFtMX2GWXFkE7uP5RVqAs0OSVzfZn4Bwz6U5zZOVEreVXmiDYsnU
	 OtW0asZhPl4FCezktxsV++OB4kd16Zgf4FtUICE/KdKVnkbcD2EUTuv7Ss+q53szBp
	 LMNuNIEu3kYrzysDNwUYtaw1yyfFvfPSydxrz6NW9/Qxew0CGYbEcWefXieL6piTDu
	 6RhdKI6Vba18PePUkWV3gD/u42DT9KqpfUAJIqcIZxVIIsZjzpOfnGEfTwUOZHGFhz
	 YeQdQjL/qaYZwb+tMB2W7AYE2225oIG3cb1fMzSlXWARLaZz5HBhOy2JTlDPZYf4iN
	 gpHha8HIOSyKA==
Date: Thu, 27 Nov 2025 07:30:31 -0600
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: devicetree@vger.kernel.org, Peter Rosin <peda@axentia.se>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-kernel@vger.kernel.org, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Georgi Djakov <djakov@kernel.org>, 
 Jonathan Cameron <jonathan.cameron@huawei.com>, tomm.merciai@gmail.com, 
 Arnd Bergmann <arnd@arndb.de>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, 
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
 Conor Dooley <conor.dooley@microchip.com>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 biju.das.jz@bp.renesas.com, Magnus Damm <magnus.damm@gmail.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Conor Dooley <conor+dt@kernel.org>, 
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
 linux-phy@lists.infradead.org, 
 Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
 linux-renesas-soc@vger.kernel.org, Mark Brown <broonie@kernel.org>, 
 Guenter Roeck <linux@roeck-us.net>
To: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
In-Reply-To: <d0518a64bac31a5a755471f79d6000aa81657503.1764241212.git.tommaso.merciai.xr@bp.renesas.com>
References: <cover.1764241212.git.tommaso.merciai.xr@bp.renesas.com>
 <d0518a64bac31a5a755471f79d6000aa81657503.1764241212.git.tommaso.merciai.xr@bp.renesas.com>
Message-Id: <176425022262.4101597.2096782802654822701.robh@kernel.org>
Subject: Re: [PATCH v5 01/22] dt-bindings: mux: Remove nodename pattern
 constraints
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251127_053034_275362_FBA885F3 
X-CRM114-Status: GOOD (  13.13  )
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


On Thu, 27 Nov 2025 12:48:28 +0100, Tommaso Merciai wrote:
> The nodename pattern in  created an unnecessary restriction that forced
> all mux nodes to be named with the 'mux-controller' prefix.
> This prevented valid use cases where mux functionality is part of other
> hardware blocks that should use more specific naming conventions.
> 
> Remove the $nodename pattern constraints from both the 'select' keyword
> and the properties section of the mux-controller schema.
> 
> Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
> ---
> v4->v5:
>  - Added Reviewed-by tag from Conor Dooley.
> 
> v3->v4:
>  - New patch.
> 
>  Documentation/devicetree/bindings/mux/mux-controller.yaml | 6 ------
>  1 file changed, 6 deletions(-)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/slimbus/slimbus.example.dtb: slim@28080000 (qcom,slim-ngd-v1.5.0): 'audio-codec@1,0' does not match any of the regexes: '^pinctrl-[0-9]+$', '^slim@[0-9a-f]+$'
	from schema $id: http://devicetree.org/schemas/slimbus/qcom,slim-ngd.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/slimbus/slimbus.example.dtb: slim@28080000 (qcom,slim-ngd-v1.5.0): #address-cells: 1 was expected
	from schema $id: http://devicetree.org/schemas/slimbus/qcom,slim-ngd.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/slimbus/slimbus.example.dtb: slim@28080000 (qcom,slim-ngd-v1.5.0): 'dmas' is a required property
	from schema $id: http://devicetree.org/schemas/slimbus/qcom,slim-ngd.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/slimbus/slimbus.example.dtb: slim@28080000 (qcom,slim-ngd-v1.5.0): 'dma-names' is a required property
	from schema $id: http://devicetree.org/schemas/slimbus/qcom,slim-ngd.yaml
Documentation/devicetree/bindings/thermal/thermal-sensor.example.dtb: /example-0/soc/thermal-sensor@c263000: failed to match any schema with compatible: ['qcom,sdm845-tsens', 'qcom,tsens-v2']
Documentation/devicetree/bindings/thermal/thermal-sensor.example.dtb: /example-0/soc/thermal-sensor@c263000: failed to match any schema with compatible: ['qcom,sdm845-tsens', 'qcom,tsens-v2']
Documentation/devicetree/bindings/thermal/thermal-sensor.example.dtb: /example-0/soc/thermal-sensor@c265000: failed to match any schema with compatible: ['qcom,sdm845-tsens', 'qcom,tsens-v2']
Documentation/devicetree/bindings/thermal/thermal-sensor.example.dtb: /example-0/soc/thermal-sensor@c265000: failed to match any schema with compatible: ['qcom,sdm845-tsens', 'qcom,tsens-v2']

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/d0518a64bac31a5a755471f79d6000aa81657503.1764241212.git.tommaso.merciai.xr@bp.renesas.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
