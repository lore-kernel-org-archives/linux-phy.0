Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5EF2CA5FFC
	for <linux-phy@archiver.kernel.org>; Tue,  6 Oct 2026 10:48:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JTjxevVw2gRkcnhcfeJ0tXVFb1VuuWdmwSu9Arz0sVU=; b=aWM56miUuNoYd+
	zFt/g7ms+z74i4K6F3zdt3Hyo7ugjvEeH8RaBYBb6UJxxJb+XHbQm5kZbofTZMe1X0edWMTos4gRS
	A1rhpIvU6Vu8iMd4mMpzjjx7KYjQ5dA4Pa5GkFcLO2vc0UDHuACUHsB/RIbxZR9Ce8yprL02iJeay
	eXVMat1A7IWMTuF0NhPTb9vZBZpHy+wvOc7JUndFv6X1NarrV2LltPNrnCR5oetU/rzrVnJ63O9Qg
	+3ytk5XQHuxbH5PFuxs5w+pC5JjAJRGhfbZ0unP8khGRXEuLFKurBqqoBN8YCio9nz/hHv/nKenmB
	e9ohjFm/muKciHkLkQEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xE2iI-00000000YmD-1T1x;
	Tue, 06 Oct 2026 10:48:02 +0000
Received: from mail-qv1-xf2c.google.com ([2607:f8b0:4864:20::f2c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xE2iE-00000000Yk8-1OeT
	for linux-phy@lists.infradead.org;
	Tue, 06 Oct 2026 10:48:01 +0000
Received: by mail-qv1-xf2c.google.com with SMTP id 6a1803df08f44-917bab38b14so31596896d6.3
        for <linux-phy@lists.infradead.org>; Tue, 06 Oct 2026 03:47:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1791283677; cv=none;
        d=google.com; s=arc-20260327;
        b=FGtKawlPP7nPRRbQbkkP9oTumFn/mEtuIrIaY93h7QqMm6rgae41lSBAxnOAHGfriQ
         zWuuSuaCpEhWOrXGmbK+ILHUDNXOjyXGKy5P49qc4GDV2HkRhM16Gzc0R7BAyR1b4sQq
         KdCt6suttbf8pfyCanhx3O3Lgwj829F3/BzstBvPpeolVkdQr4oRR1TGPPDoroJzGeig
         8dleAQi13DYuqy/AwIr8F+MYVclFjxrQSQ9F38b1+KjzzGO2zxdGjXhHp30DQMhK7A71
         hSOJ+v3Cp/rSUj2/Z3vD7C1NVYrSJRPtD0DA0fsTuvkMwHKLs7xJPH0xD0wLa4d5KDFB
         zirw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=SYZusaEHeQJp9+PNNGappmpwDZuJKs0VI2BXqV5hxv4=;
        fh=C9F21OULcxgE36wuJQbLyKvObCRI/bY3n/PwUpCO0lw=;
        b=FBmqWohco2NzQvB+mO/wPuDPNtvLIso2nm+aNq5hvC/Lgq45pYH9PZgpRZhx19t7Pi
         lJVZf2emTpN+v2c18CDhf0dYU98R0+Mb8AW5MKl3qyPaBiIBP4mMt5OeUXswwGuxna1g
         76gcuCyVZun2BHONTijTuhSGsPsewWPG6yFQXTpDFYrWwL5GpC9sZriwid7oknvIrdAQ
         KpkgHDLyzh9PeW2MdZhVMQeL2Tkyp03bX84oYr7HJVLqJqz5QI3oTYy5XY+UF9qw4txt
         xrOcLVh1g6acyewblA/fM67mSO5dBLZMzxNy+rm+5PqifcT8uPoxSi6VdP5tjEtAxbct
         qZ/w==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791283677; x=1791888477; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=SYZusaEHeQJp9+PNNGappmpwDZuJKs0VI2BXqV5hxv4=;
        b=Ge4Ix7kOP/dmKY+AKNxddKN07y+eBtkoHuDirdtf+Tre3VYFT/uEO4lhFZNreZ9UHH
         NO/wvRzf0nTfSW9zl9NBsZdfr32ooLwjkxkUNbs2gu4BhBVHtSAaF7Buc8VElvcIm6kJ
         zHU/gudH6FwSO4jXIUtP16nQt2iWZfu14jC9OfYJk/2v3M1vnOEDOknvQdayzJHMuFQs
         p/Uj5oR9eIXzE5vzFLBGeFwSyB3Y8O7QMuiguPdMTWR/KVGy/Jb4Peoy4tGtFO38dxhX
         jaZmh/1VlrASJha6t2kGfGklENT4/LHwH7Y2D/UdxdcOrlpJwtpoTGG7eUCHOCcOLxJn
         PUcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791283677; x=1791888477;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=SYZusaEHeQJp9+PNNGappmpwDZuJKs0VI2BXqV5hxv4=;
        b=m/+O8H3SWkYsWOXaalIOya5jQh+Eiu8PKyf6rHp7LVX5CPMss4Pxo1/IqFmJKI8MPu
         h73JG1iYdhp4tfwJ3V1XxvqzhDse2J0Mvr7TqQAypL/QL00hixptlAXczBzUEmYXYBaZ
         3fADmzjhb1XyyfQcJJPnP417LXSBPUHSTko5UrmRmYLVRlePuZ5F8j5wUcekzrrgZd8W
         MzOD4KLT6qF8BqoFWVoMNnCidl6NBSmcTaJl90HqREkkjNWM30kPMsdkxnT4W9aWySSo
         QN+j4orlFJ2ZFCcCV0NR/7FdUA8HLk/qUqm23jbkZplmcpngL/RVOJbe10/ai+QWeb87
         zdaQ==
X-Forwarded-Encrypted: i=1; AKwUvByyinFFo37ZBY28pYTVp7mS6uf4EnsMsB36RptzaShd3uOwb7PG7Nb1S75ipses+G3zsIDqy0xJ9vA=@lists.infradead.org
X-Gm-Message-State: AFq9FYIyqU0beJjLwA9uk6YbOG4fP4avUl5BEqQ6+bpGtXolIBNU+Ixz
	l/vnxs3c1FoqeeMOC92zonewxkZSt4GcCU73wL08nrEKzGph7WQpPEvt6dXKSb3BsaNYO2QELhh
	odyWrpv47+NrjwbZ5EJ8hwIOZjkh612o=
X-Gm-Gg: AYBFou3a3WgruAbKCZ3nlaqwO0XS5QHnNBp2+gArVtAg2xOL/E86yz9BLzih02T8SCg
	wK2N4O2iV7v6WroAqng7FhR8BBASI2eMfpnPNiWN2e1qadiG3o9g1ryKxXpKh3xFwmXuS1DA9CO
	irbsb56koRbPxhqUoKThHbq8BEgOLKYDU+8XDdZK+WhW39YwJkESm67jASoAasWIz6DTGLRy9sv
	e12etD3u015otZ0RT00Bgdxuwrfc4mOf6npMhBnBbRePsO90AF1GoYqAe+eOH+MR/MkWiSSsZG4
	tLK768EwXr/J1TSBTg+m4fvYQr16pFee/0KPwt0N42sN57OHaWohHdSp2+OBxLjK9BeTiqtoKhZ
	cIZOBVQsu
X-Received: by 2002:ad4:5fc9:0:b0:912:435f:1a8b with SMTP id
 6a1803df08f44-9198b7a05f0mr16247936d6.22.1791283676856; Tue, 06 Oct 2026
 03:47:56 -0700 (PDT)
MIME-Version: 1.0
References: <20261006102937.10972-1-ansuelsmth@gmail.com> <asTRQ6d0-NYOeHqX@parshuram>
In-Reply-To: <asTRQ6d0-NYOeHqX@parshuram>
From: "Christian Marangi (Ansuel)" <ansuelsmth@gmail.com>
Date: Tue, 6 Oct 2026 12:47:44 +0200
X-Gm-Features: AclHuK9fa-eKez1qMwGkLA8zpyrdQxMIu76X1IlFgkWsR3UIRNVxdiubkFU4NSU
Message-ID: <CA+_ehUw8fQHGef_L7YPQEf-wwuzP9km=G64Ty3+AkvM=fkNJ4Q@mail.gmail.com>
Subject: Re: [PATCH v14 0/3] airoha: an7581: USB support
To: Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Lorenzo Bianconi <lorenzo@kernel.org>, linux-arm-kernel@lists.infradead.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261006_034758_389619_B43A52B5 
X-CRM114-Status: GOOD (  17.37  )
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

Il giorno mar 6 ott 2026 alle ore 12:45 Vinod Koul <vkoul@kernel.org>
ha scritto:
>
> On 06-10-26, 12:29, Christian Marangi wrote:
> > This is a major rework of the old v2 series.
> >
> > The SoC always support USB 2.0 but for USB 3.0 it needs additional
> > configuration for the Serdes port. Such port can be either configured
> > for USB usage or for PCIe lines or HSGMII and these are configured
> > in the SCU space.
> >
> > The previous implementation of a dedicated SSR driver was too
> > complex and fragile for the simple task of configuring a register
> > hence it was dropped and the handling is entirely in the PHY driver.
> >
> > Everything was reducted to the dt-bindings to describe the Serdes line.
> >
> > Also the property for the PHY are renamed to a more suitable name and
> > everything is now mandatory to simplify the implementation.
> > (the PHY are always present and active on the SoC)
>
> I get build failure:
>
> drivers/phy/airoha/phy-an7581-usb.c:7:10: fatal error: dt-bindings/soc/airoha,scu-ssr.h: No such file or directory
>     7 | #include <dt-bindings/soc/airoha,scu-ssr.h>
>       |          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>

This header is present in linux-next

https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/include/dt-bindings/soc/airoha,scu-ssr.h
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/include/dt-bindings/soc/airoha,scu-ssr.h?id=11952173d8a180ac05641775f80bd6946327478f

Introduced by a clk series.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
