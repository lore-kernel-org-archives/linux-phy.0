Return-Path: <SRS0=PcV7=KP=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 14609C433ED
	for <linux-phy@archiver.kernel.org>; Thu, 20 May 2021 00:06:09 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C8D84611C2
	for <linux-phy@archiver.kernel.org>; Thu, 20 May 2021 00:06:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C8D84611C2
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TWutOvAAPP0KZK5ySOuPaixDvpYmMWrJ/fRm2k6arQo=; b=anao7UFYU+w8IVBc6npzImnRg
	t6Lx0cKQE3uZlhoyG9hyAjxi7cs0dZRk0+1JLjvu+faMqlZ7rkt0gYqDof/rBJIjIblt/JSwwXN8T
	lT+46BDmseEv3Olvl0ew9996GS+luXH0FvZTKQhNALSWkfG+pyjsAg3yNA423wdMBxwiGv5DDoLZ3
	B5NLNylY/K/Y/b09iOrCcynYU8mRDBGmVUWeydURZt3BdPkscuZ42gEqaGEOnxNADVEt0oZ6N7ll7
	UrrVlRm43jP8vs7qFmekVwP8aecXbgrTnY5SnkgajEimXl/L6obtROe0xGIAGnZCPVdwa7/g8ayeL
	ol2hIzIzA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ljWCU-005POq-V0; Thu, 20 May 2021 00:06:07 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljWCP-005PNo-EQ; Thu, 20 May 2021 00:06:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=+/HHwpUG4DYqY1wOYcmevFTpDYTTWuP4aLIe9OEyOIE=; b=uqpW3vP8pURw3oP0YsYN+VhwSt
 R5/z8HVrcJxXMt+o0HlDNbUDnznfh7s2zP6vG0F0j4w9AMT0NnTvIpKlFdtBZul0Jz7CQ/i13aH3c
 M27qzhzijQlO5Txi1AMWniflvSREffjN0z1c0nBYg/WV9QOCKJqhELhj2TMMmqKSZeIrRoEwgAI13
 pXR08m+hXyFRGiMbItKelz0NRdm0V97ZqAaLw/bAr/iKp9qTibMruYjHH5ldVOqKF2ACCjWT2EQwg
 TQwXnBpEH7+XeqaaMSehxwohh9XIA9QOzRtMB7dPjhKeL3PtMAy/97AWXeVr6hll/OrYqW7RfYsMS
 HAPdwIMA==;
Received: from mail-ot1-f48.google.com ([209.85.210.48])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljWCN-00FrJN-0G; Thu, 20 May 2021 00:06:00 +0000
Received: by mail-ot1-f48.google.com with SMTP id
 80-20020a9d08560000b0290333e9d2b247so2799750oty.7; 
 Wed, 19 May 2021 17:05:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=+/HHwpUG4DYqY1wOYcmevFTpDYTTWuP4aLIe9OEyOIE=;
 b=hw5XV0XUqXC7LHYIW1lDh0pukBTsv9uidaqGC1nVvOeaPFax9YY2JVC5pwxLs2rm/J
 r96vhhmFUB7b4kj/gqd2S+vNpYBY5Cz0TQHh1+nbOzfj7G833wRyFi6KExPNaYHYnmM5
 Z7OAbQphD8dx34H17FKhhPh3cHrHmsKfEbWSDf19HrVgHvhldKM62QHJ3Qs/Sp19yYmn
 4we+7nXofQ843mkbkvvJ+ZTdQQ3Jk5GMWzWYJ8ECDG9JJjJnrR/DtSFVdlQzkqLvFucH
 0qNQ/j2oG2zQcV7gxjKaslK2MKBF9tQu+pSQvg75IzJw3RUydRXoAHn1uTedxFq8MABq
 IgHA==
X-Gm-Message-State: AOAM5330zVWNtuvzfT2T8Rb/0u0OSi/VVxhj7ZIEyVCbCWDHB6/mzHyF
 IyLW9uwVsTkrJ2RzcQdLqA==
X-Google-Smtp-Source: ABdhPJw5gex1OFhEgIpWnHy7lFKkRi3NhLOnuaVuAAlbkZZf7bbRmy2hkqeJlyFMuVyUw1rpIxJDmQ==
X-Received: by 2002:a9d:37e2:: with SMTP id x89mr1786329otb.352.1621469157717; 
 Wed, 19 May 2021 17:05:57 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id r10sm245097oic.4.2021.05.19.17.05.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 May 2021 17:05:56 -0700 (PDT)
Received: (nullmailer pid 3927287 invoked by uid 1000);
 Thu, 20 May 2021 00:05:55 -0000
Date: Wed, 19 May 2021 19:05:55 -0500
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: linux-kernel@vger.kernel.org, heiko@sntech.de,
 linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, kishon@ti.com,
 devicetree@vger.kernel.org, robh+dt@kernel.org, vkoul@kernel.org
Subject: Re: [PATCH v6 2/4] dt-bindings: phy: rename phy nodename in
 phy-rockchip-inno-usb2.yaml
Message-ID: <20210520000555.GA3927257@robh.at.kernel.org>
References: <20210518165658.12764-1-jbx6244@gmail.com>
 <20210518165658.12764-3-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210518165658.12764-3-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210519_170559_067210_0D30DE89 
X-CRM114-Status: GOOD (  10.34  )
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

On Tue, 18 May 2021 18:56:56 +0200, Johan Jonker wrote:
> The pattern: "^(|usb-|usb2-|usb3-|pci-|pcie-|sata-)phy(@[0-9a-f,]+)*$"
> in phy-provider.yaml has required "#phy-cells" for phy nodes.
> The "phy-cells" in rockchip-inno-usb2 nodes are located in subnodes.
> Rename the nodename to pattern "usb2phy@[0-9a-f]+$" to prevent
> notifications. Remove unneeded "#phy-cells" from parent node.
> Also sort example.
> 
> make ARCH=arm dtbs_check
> DT_SCHEMA_FILES=~/.local/lib/python3.5/site-packages/dtschema/schemas/
> phy/phy-provider.yaml
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  .../devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml       | 11 +++--------
>  Documentation/devicetree/bindings/soc/rockchip/grf.yaml       |  4 ++--
>  2 files changed, 5 insertions(+), 10 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
