Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4180606A32C
	for <linux-phy@archiver.kernel.org>; Tue, 17 Nov 2026 18:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=U0ZgNsCo;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=MFGoSb8u
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Unsubscribe-Post:List-Owner;
	bh=ATDaZnVGTnPxLvy/1KuXItqSrtZtrzGPWsEmU41JWN4=; b=U0ZgNsCo125jNRWPPDazcK6yKG
	/3vmo8plAbq4Qn9rKHfG+3Bqv2A2jdviwMUXmUT6RzJ9h3iiVvLduQuozOI24WEh12IM73paTHvtd
	SbxbB/3/0znGfRsUauhPuAP2PJlloYvwJrHQksJDi1MEycNl4SQAMFOTK9fvI79DGrkVxu9uD1esv
	M+18xw5nkxa+2mFPsFslnSFLJajxXjfZkQy51+71twfKz1myjQ97TcOIRk10F2piHEHt7JESYJlU7
	4mr9zSPG0VdnrziEuoVi/ev2nVVfYxDQzjAosqshMefJFb2gwP+s7cFMTUYGCAjNo3M9IKVbOj3S/
	TddL5nyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTNu2-00000006l7a-15d6;
	Tue, 17 Nov 2026 18:27:34 +0000
Received: from mail-yx1-xb131.google.com ([2607:f8b0:4864:20::b131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTNtz-00000006l6c-2s0i
	for linux-phy@lists.infradead.org;
	Tue, 17 Nov 2026 18:27:33 +0000
Received: by mail-yx1-xb131.google.com with SMTP id 956f58d0204a3-6767d92cde6so5323501d50.0
        for <linux-phy@lists.infradead.org>; Tue, 17 Nov 2026 10:27:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1794940050; cv=none;
        d=google.com; s=arc-20260327;
        b=GK8Z2QKkMbrHvMBc8JiotCzgv8DMuUj1N1gcXP6UtkCDHS5zf+0Wq5Qg1RmNt871nC
         4yHb6oLMzRnBSDR+uZG7tIjip9Jv8qJU+na6tlxLy3c88ea5Rx+trn+UA/2RSefbbvqh
         wy2CkK8oAbpobVIbFEQY7lVIUFG15xxfWub9c2ZDx2hn0FSOaUA4IAXD4ZPNyziqTAkL
         YvwH5aXuiMBkIgUos/Ms1Na9H4aHSkPvIJaiNJ5FhFWqWpZiO4DkICq4t0vt/Obm0odo
         tn/CEy29Tfmmv/JNy+GJmeKVPLyQIOgge9jGUKMtTy+vPIASGo0unqZ0FGQdvrg36JeQ
         oaIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=Ono9E1opT8JaFJyEmNrBRx7Uw7yYbLKTsou3aRgc7Is=;
        fh=zJex59MS3k+6NrbN7PMEO2H/dP0sC0/AWm0/0+pWR8I=;
        b=XtFXMSJBFRpTb/k1Tbbk6MlEsCmLNMNLDBHqJPoVVyyoUdYS3n0YqAfs3seDxEAtV7
         NKvQ7PSIEgPy50ILBR3aISfe3CBitkI9NiwEqGJYWAQ9tUDCUYkf5Tyr6fK46afF9CMr
         k1J0CfQlWP8RPR1DeTuiF25QX1UMB55BNNptJl/Kl87t7JVz3MXUbfkT7mMWyK5RegzX
         pjQ9YFzXVXiAt+OxDt9D4k5iAKbqoVIoRp5FdlPTyDMqCDbWQCdCqk4H2taRTp4MeV61
         LGVWS5yjYZ352NKeL0QU1tROpNzsjTFR0/Q0bCRStRyEusGxKnQjoHK7U9iiQWMdXvLR
         ZuRQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794940050; x=1795544850; darn=lists.infradead.org;
        h=content-type:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Ono9E1opT8JaFJyEmNrBRx7Uw7yYbLKTsou3aRgc7Is=;
        b=MFGoSb8uPgsNaM6h2uCyN+3rcUaR/GCLizZfdWx4aDNtCuHuOkEbLcG9axjFlE9C7m
         Pla72L25EwTVwBhm8CFAmOcOb7duwBOs4agyvg4m8BylZrdxQVuBX7g+q6xdT5xTZwk+
         tYX7W2fbmsxbGW44ewtVEqqUdCJvh1wwXQ6qC4cgJQ0Uu7qzgQmN5HkcAiLOsRsUwhDA
         LXRUkioCWlMxCKbfL1tOAYSH8P3WHeitVZSeYYiuvgJxKp+FuiJ24Gg+Dqxw/R6+wahR
         oPiradb3sx4EzEaFPPTLB1jLSvdiGcH82BNGHvHzhYiyhCq8+k1PHaYKSj4UmlPxj+gx
         NfpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794940050; x=1795544850;
        h=content-type:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Ono9E1opT8JaFJyEmNrBRx7Uw7yYbLKTsou3aRgc7Is=;
        b=szZHR/0SHngvIRbyqtJZQkQi42dMqSFgcLTKMYKYsHuM1pnWwEbj7iqmEszurfYRlX
         ryBxldBByGHJopcBBdKd1KJyXnXOHElhnOSuPXAqNF8e2vlBI6ieFuGtDsEzJP63txK+
         UcFs510IifRysX4HU2gAZYqV5QxGeRMba72ytjo33zXvOxif/+SfE26RpzCFbFKNUfzw
         XTIOFr4E2lfOTqtaqQFWFgd9qTYqwW3WN8t4ZjEuMpgnzQYxA5vzu5aV0OUPEAA77eAu
         QzhHAhqGsvASyJ8pADgZ6rd96lel4PK2bNm0RDKCLQXpb40tdBiWbMjAh0ontNg/5vzM
         nUiQ==
X-Forwarded-Encrypted: i=1; AL+hErFIjQAzVVTpTnBCUcHD/1fbiB4PzDHVisuHZo8hhRRkxPDw88UFA+DdN5GvzVDmE7UY6lVmDIjRJ0g=@lists.infradead.org
X-Gm-Message-State: APuU4Z/rgCLsZhxHxzjO6dgBhQh4ixG17MwyVlGGIK7vapeKJn++eyIk
	2C2fXjHFy3JwxGMKUB1iMnQEcGLMf9lOMcNtdzE1b0gw0P7310z2f/3aAexDq6GuRzZFDMS3eZv
	REamAOQAXhJTEn22IupiHRlCfgKl/7Ts=
X-Gm-Gg: AZFdTZeqEJpTy+MvnHtMgE0QQBa/Edw+ChFbpjtwOrldMMKbZFbtXa1MrGwk3GzonXh
	zglwETe/kL7Pdobalihlqbb8Z1Y0rcKFt6hfyY4CVkDvIiAMLa1eSh+NjyMsfZZlr/b8DtVGLCI
	lNLx1VhwhTGiO2KnUp1TGRUxf/nICfXAZZnTUB9vQsFj+dpuIbDFHWR3j9Q0NC49CgKOL9wd0ED
	2FBEEWk6ojssgDJwgviZdTL14n3OvsaaqCN7GMgdLtIIEXQxnIT4oSGXyQmszobg3BW7+gxx/tb
	gidk8PZ9dXy1TVQiCzmX5dP7aSURRfhfFo2aLcjrnw9ioGa9LdJPho7EYwmj31b1DUY3AkPCps2
	nRqxTAjpBmX9PoSvqW+icfKSxpV8GOm0PkG2LqyslPNgxjIukp0xx+ApmSlEw/6LcJF8=
X-Received: by 2002:a05:690e:450b:10b0:67c:17fb:ec8d with SMTP id
 956f58d0204a3-67dd3f1ac63mr164188d50.27.1794940049825; Tue, 17 Nov 2026
 10:27:29 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261103194410.6632-1-ansuelsmth@gmail.com>
In-Reply-To: <20261103194410.6632-1-ansuelsmth@gmail.com>
From: "Christian Marangi (Ansuel)" <ansuelsmth@gmail.com>
Date: Tue, 17 Nov 2026 19:27:17 +0100
X-Gm-Features: AclHuK8Bn8CUkBXh-_M6ikN4qkk1xw_6av3oEY3utHhv9XplUveKXs5p4Y_0xOM
Message-ID: <CA+_ehUzi7gp-4u6J6J3R_u6z7osGUe+2-e444a183fuQFDMpsw@mail.gmail.com>
Subject: Re: [PATCH v15 0/3] airoha: an7581: USB support
To: Christian Marangi <ansuelsmth@gmail.com>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Lorenzo Bianconi <lorenzo@kernel.org>, linux-arm-kernel@lists.infradead.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261117_102731_744669_5EEC320B 
X-CRM114-Status: GOOD (  28.79  )
X-Spam-Score: -2.1 (--)
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
X-Spam-Status: No, score=-5.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Il giorno mar 3 nov 2026 alle ore 20:44 Christian Marangi
<ansuelsmth@gmail.com> ha scritto:
>
> This is a major rework of the old v2 series.
>
> The SoC always support USB 2.0 but for USB 3.0 it needs additional
> configuration for the Serdes port. Such port can be either configured
> for USB usage or for PCIe lines or HSGMII and these are configured
> in the SCU space.
>
> The previous implementation of a dedicated SSR driver was too
> complex and fragile for the simple task of configuring a register
> hence it was dropped and the handling is entirely in the PHY driver.
>
> Everything was reducted to the dt-bindings to describe the Serdes line.
>
> Also the property for the PHY are renamed to a more suitable name and
> everything is now mandatory to simplify the implementation.
> (the PHY are always present and active on the SoC)
>
> Also other unrelated patch are dropped from this series.
>
> Changes v15:
> - Rebase on phy/next
> - Add review tag
>
> Changes v14:
> - Drop blank lines at EOF for DT patch
> - Fix SPDX tag for move patch
>
> Changes v13:
> - Rebase on top of phy next
>
> Changes v12:
> - Rebase on top of linux-next now that clk patch got merged
>
> Changes v11:
> - Remove clk patch and move to dedicated series
>
> Changes v10:
> - Rebase on top of linux-next
> - Add review tag for DT patch
>
> Changes v9:
> - Add spinlock init
> - Add ack tag
> - Add review tag
> - Add additional comments for phys on USB 3.0
> - Add extra logic to make phys optional for USB 3.0
>
> Changes v8:
> - Squash header to clk Documentation patch
> - Address comments from AI Bot
>   Link: https://lore.kernel.org/all/20260520150912.11614-1-ansuelsmth@gmail.com/
>
> Changes v7:
> - Rework to double PHY implementation
>   (suggested by Rob)
>   Now the clk driver expose a PHY for Serdes port
>   USB PHY driver selects it
> - Rebase on top of linux-next
>   Link: https://lore.kernel.org/all/20260519220813.28468-1-ansuelsmth@gmail.com/
>
> Changes v6:
> - Fix kernel test robot (sparse warning)
>   Link: https://lore.kernel.org/all/20260306190156.22297-1-ansuelsmth@gmail.com/
>
> Changes v5:
> - Add Ack and Review tag from Connor
> - Implement Ethernet support in the USB driver
>   (testing support for this Serdes on a special reference board)
> - Use an7581 prefix for USB PHY driver
>   Link: https://lore.kernel.org/all/20251107160251.2307088-1-ansuelsmth@gmail.com/
>
> Changes v4:
> - Rename PCIe and USB PHY to AN7581
> - Drop airoha,scu (handled directly in driver)
> - Drop dt-bindings for monitor clock in favor of raw values
> - Better describe the usage of airoha,usb3-serdes
> - Simplify values of dt-bindings SSR SERDES
>   Link: https://lore.kernel.org/all/20251107160251.2307088-1-ansuelsmth@gmail.com/
>
> Changes v3:
> - Drop clk changes
> - Drop SSR driver
> - Rename property in Documentation
> - Simplify PHY handling
> - Move SSR handling inside the PHY driver
>   Link: https://lore.kernel.org/all/20251029173713.7670-1-ansuelsmth@gmail.com/
>
> Changes v2:
> - Drop changes for simple-mfd
> - Rework PHY node structure to single node
> - Drop port-id property in favor of serdes-port and
>   usb2-monitor-clock-sel
> - Make the SSR driver probe from the clock driver
>
> Christian Marangi (3):
>   dt-bindings: phy: Add documentation for Airoha AN7581 USB PHY
>   phy: move and rename Airoha PCIe PHY driver to dedicated directory
>   phy: airoha: Add support for Airoha AN7581 USB PHY
>
>  .../bindings/phy/airoha,an7581-usb-phy.yaml   |  61 ++
>  MAINTAINERS                                   |  11 +-
>  drivers/phy/Kconfig                           |  11 +-
>  drivers/phy/Makefile                          |   4 +-
>  drivers/phy/airoha/Kconfig                    |  24 +
>  drivers/phy/airoha/Makefile                   |   4 +
>  .../phy-an7581-pcie-regs.h}                   |   0
>  .../phy-an7581-pcie.c}                        |   6 +-
>  drivers/phy/airoha/phy-an7581-usb.c           | 559 ++++++++++++++++++
>  9 files changed, 663 insertions(+), 17 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/phy/airoha,an7581-usb-phy.yaml
>  create mode 100644 drivers/phy/airoha/Kconfig
>  create mode 100644 drivers/phy/airoha/Makefile
>  rename drivers/phy/{phy-airoha-pcie-regs.h => airoha/phy-an7581-pcie-regs.h} (100%)
>  rename drivers/phy/{phy-airoha-pcie.c => airoha/phy-an7581-pcie.c} (99%)
>  create mode 100644 drivers/phy/airoha/phy-an7581-usb.c
>
> --
> 2.55.0
>

May I ask why this is still in this state? No report from sashiko, all
review tag...
Would love to have some feedback on how to proceed with this :(

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
