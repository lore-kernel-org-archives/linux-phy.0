Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDD8AC433FE
	for <linux-phy@archiver.kernel.org>; Wed, 16 Nov 2022 15:29:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jtLgGvHwncVHrw/0LVulkONSjEEGwZ+AIQfUFLhgXCM=; b=m1RWrE1oGsbgcs
	2bWaDclREbuPK72cHXBUru94Uc8uuI8nhL2msFwbgCr7PVzH6ecqNWxvEMER9tkJQN7O/jp83PTny
	zsfUSrzwjc8qI9sozrm5EBjJwOo/3vyhwMBpItzJS6dNlHx2sUPHrzdZwFco8kArtXsvFhpmw11/N
	zNBQQ9zJtY+oBTs+1J27lZFb+fiIElQ8JVuRN9StQeMyQ/i0XLjcifw7hxstf8ig/rGIC7gWaRGuc
	h4KVQAqzlekWuRJ5SRznk9fVBwvPgE4nn0ZD7om4WnDhe/bgM8g42iAUDAD9/7DzsQSO2YG2qp3Vn
	SFP+KXuxl/6jUiH8+Z8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovKM2-005Fs1-8B; Wed, 16 Nov 2022 15:29:34 +0000
Received: from mail-ot1-f54.google.com ([209.85.210.54])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovKLz-005Fnl-2i
	for linux-phy@lists.infradead.org; Wed, 16 Nov 2022 15:29:32 +0000
Received: by mail-ot1-f54.google.com with SMTP id cn2-20020a056830658200b0066c74617e3dso10616812otb.2
        for <linux-phy@lists.infradead.org>; Wed, 16 Nov 2022 07:29:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=cLCzckP4DZJLigh6uqQZLXPP0BctbxitUX+h3b1cBFs=;
        b=kkGbOYJr8UKg7SLqFMpVWp8UDzs1qAhPvzMOQaMMv8mh/so2UtX9BMrO+reymP4XWq
         zsiWs0QO+GtHz6ETlmQfOfl6+3kM1n+YCUz/jVANloQ3jlf4e6z3rgHgj9jvztd7yPBR
         nAf1TcUqcD1BcmJVHZSpPB8Dn1KiB/KSaA+p3KZfM2VnscS+q7AJWZA3wxTbEL8zrXFi
         Yt9BbrxuBpcqTQXPlQ1vQHjsbUI560MOWjJIl2nawlZOgSeR1o6SpHbHaNpg8Ev+BbPH
         vjobdhApYU4MuM9T6K97LGOSpE1xAstS5gSjI5zgXYqD5k1daWGj66f/Qyhi1RlnUIac
         rFGA==
X-Gm-Message-State: ANoB5pnayFOTHF4mrSCf0DI3WWJq3tCe5p4oou3llVP5bNhz+al+Sfrq
	XIJO/dIvbXs29BQl6n96Bw==
X-Google-Smtp-Source: AA0mqf4P0aJNSqcTZm5Qyjqu1YvFIAsxgQQqtjolMrC4rlaQIkKdRb6zA7FHl+CjFaNqbCoWEu/oFw==
X-Received: by 2002:a05:6830:d13:b0:661:b84c:6b0a with SMTP id bu19-20020a0568300d1300b00661b84c6b0amr10834817otb.186.1668612566371;
        Wed, 16 Nov 2022 07:29:26 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id g8-20020a056870d20800b0012d6f3d370bsm8042595oac.55.2022.11.16.07.29.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Nov 2022 07:29:25 -0800 (PST)
Received: (nullmailer pid 4083492 invoked by uid 1000);
	Wed, 16 Nov 2022 15:29:23 -0000
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, "vkoul@kernel.org" <vkoul@kernel.org>, Andy Gross <agross@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, linux-arm-msm@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221116120157.2706810-9-abel.vesa@linaro.org>
References: <20221116120157.2706810-1-abel.vesa@linaro.org>
 <20221116120157.2706810-9-abel.vesa@linaro.org>
Message-Id: <166861224970.4037717.4752810880647292636.robh@kernel.org>
Subject:  Re: [PATCH 08/10] dt-bindings: phy: Add qcom,snps-eusb2-phy schema file
Date: Wed, 16 Nov 2022 09:29:23 -0600
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221116_072931_155748_66545FBD 
X-CRM114-Status: GOOD (  13.38  )
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


On Wed, 16 Nov 2022 14:01:55 +0200, Abel Vesa wrote:
> The SM8550 SoC uses Synopsis eUSB2 PHY. Add a dt-binding schema
> for the new driver.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  .../bindings/phy/qcom,snps-eusb2-phy.yaml     | 84 +++++++++++++++++++
>  1 file changed, 84 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.example.dts:18:18: fatal error: dt-bindings/clock/qcom,gcc-sm8550.h: No such file or directory
   18 |         #include <dt-bindings/clock/qcom,gcc-sm8550.h>
      |                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
compilation terminated.
make[1]: *** [scripts/Makefile.lib:406: Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.example.dtb] Error 1
make[1]: *** Waiting for unfinished jobs....
make: *** [Makefile:1492: dt_binding_check] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
