Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 977C7C433F5
	for <linux-phy@archiver.kernel.org>; Thu, 13 Jan 2022 16:29:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe
	:List-Id:Message-Id:Date:Subject:References:In-Reply-To:Cc:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=h7vtDpNTkKkbUTXGQ3PAnfQrYP4dVmxjgjL0pE+B8Vs=; b=F2OGl3R+xSmFQub0E+GZpdig8R
	xxcWC8kkdNwznWbcTWKvNBB9B77sLcAJrbFETiY3d3tQN5RSG68bF9xp5h8EhfpDBhl7AH85gelT6
	7SG8LnpKhmvW7nF3qVIDgzxav7Kerl5Oip1wXsEbH14TvuE/h0LgCrp0WK0C1LNF728rjLhdf/z5f
	Lg75EdNO5D29MXDF3X/2dyrhNHdh36s6vx/mqx7bltRunSVYbW2C/B4hlhl3CxiNZmgIctomFcgvn
	5d5/6b+z3lWCXJdVJ74vnxGisuDBqtrEV7CL/nozov90EsY3uCOtjfFO7rvUhwPNKLC3qvvM1kuUD
	wJIZCPkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n82yx-006anN-2C; Thu, 13 Jan 2022 16:29:47 +0000
Received: from mail-ot1-f46.google.com ([209.85.210.46])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n82yp-006ahL-Ou
 for linux-phy@lists.infradead.org; Thu, 13 Jan 2022 16:29:44 +0000
Received: by mail-ot1-f46.google.com with SMTP id
 60-20020a9d0142000000b0059103eb18d4so6841978otu.2
 for <linux-phy@lists.infradead.org>; Thu, 13 Jan 2022 08:29:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=FfTUA1KU03ihyLDr4QVv1wu6ZMXWlYbNR+Fc01A/CSI=;
 b=2UjVCdQ9/xAJzc4hzwIOxg+8fIfqrlrLUQvz9nPIL19rsmB+5aY6JHY+WDzIR9UH4T
 qh/niJVn7XzTc7y94741GQtgQ/0avOG850jp0cHnwNX0nkcXlnc5wl1hW4eF2quDItGk
 VASz8Hl8qUT0BPN1MqU5IcNLtOXcMgOBRfu3tinnAaYsoo+5bxHBxsvP/F/IryrGxmkc
 Y9emku4PSsE+qJ1Utcnjw3SwPquuddQTsAKfabST/onbdKJlwWNeftPW+WkhP10MHB31
 RcD8ExPrHwpgms0C0LqJ8eSX+yJkmdECWfQSAT4wfS/Aoqmjxg0CVAUWK1Lpvc8xhZwQ
 A36Q==
X-Gm-Message-State: AOAM5303poI71pES9HotpD7t0Wq6IU0ZzNtLy++RwBMXquXDAdgsy7MP
 2mYAuE/4jfBbqgLzkhJBIQ==
X-Google-Smtp-Source: ABdhPJy9L40U/ZtKmKlqocpouZSmrB8ql0DG0YsqA2zf91UqCHDFjbH1bW5G2LCfIEpgEpNeAzLD8w==
X-Received: by 2002:a05:6830:149a:: with SMTP id
 s26mr3524165otq.23.1642091377692; 
 Thu, 13 Jan 2022 08:29:37 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id n26sm634762ooc.48.2022.01.13.08.29.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Jan 2022 08:29:36 -0800 (PST)
Received: (nullmailer pid 3647187 invoked by uid 1000);
 Thu, 13 Jan 2022 16:29:34 -0000
From: Rob Herring <robh@kernel.org>
To: =?utf-8?q?Marek_Beh=C3=BAn?= <kabel@kernel.org>
Cc: linux-phy@lists.infradead.org, Russell King <rmk+kernel@armlinux.org.uk>,
 Vinod Koul <vkoul@kernel.org>, devicetree@vger.kernel.org,
 Vladimir Oltean <olteanv@gmail.com>,
 Holger Brunck <holger.brunck@hitachienergy.com>, Andrew Lunn <andrew@lunn.ch>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>
In-Reply-To: <20220112181602.13661-1-kabel@kernel.org>
References: <20220112181602.13661-1-kabel@kernel.org>
Subject: Re: [PATCH devicetree v2] dt-bindings: phy: Add `tx-p2p-microvolt`
 property binding
Date: Thu, 13 Jan 2022 10:29:34 -0600
Message-Id: <1642091374.247178.3647186.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220113_082939_836261_34651A87 
X-CRM114-Status: GOOD (  16.58  )
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
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="===============6558463233186291856=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

--===============6558463233186291856==
Content-Type: text/plain

On Wed, 12 Jan 2022 19:16:02 +0100, Marek Behún wrote:
> Common PHYs and network PCSes often have the possibility to specify
> peak-to-peak voltage on the differential pair - the default voltage
> sometimes needs to be changed for a particular board.
> 
> Add properties `tx-p2p-microvolt` and `tx-p2p-microvolt-names` for this
> purpose. The second property is needed to specify the mode for the
> corresponding voltage in the `tx-p2p-microvolt` property, if the voltage
> is to be used only for speficic mode. More voltage-mode pairs can be
> specified.
> 
> Example usage with only one voltage (it will be used for all supported
> PHY modes, the `tx-p2p-microvolt-names` property is not needed in this
> case):
> 
>   tx-p2p-microvolt = <915000>;
> 
> Example usage with voltages for multiple modes:
> 
>   tx-p2p-microvolt = <915000>, <1100000>, <1200000>;
>   tx-p2p-microvolt-names = "2500base-x", "usb", "pcie";
> 
> Add these properties into a separate file phy/transmit-amplitude.yaml,
> selecting it for validation if either of the `tx-p2p-microvolt`,
> `tx-p2p-microvolt-names` properties is set for a node.
> 
> Signed-off-by: Marek Behún <kabel@kernel.org>
> ---
>  .../bindings/phy/transmit-amplitude.yaml      | 110 ++++++++++++++++++
>  1 file changed, 110 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/transmit-amplitude.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:
./Documentation/devicetree/bindings/phy/transmit-amplitude.yaml:98:7: [warning] wrong indentation: expected 8 but found 6 (indentation)
./Documentation/devicetree/bindings/phy/transmit-amplitude.yaml:100:7: [warning] wrong indentation: expected 8 but found 6 (indentation)

dtschema/dtc warnings/errors:

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1579281

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.



--===============6558463233186291856==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============6558463233186291856==--
