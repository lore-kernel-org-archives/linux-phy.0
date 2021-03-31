Return-Path: <SRS0=Nkk4=I5=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F7AEC433DB
	for <linux-phy@archiver.kernel.org>; Wed, 31 Mar 2021 11:19:01 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 23D946195D
	for <linux-phy@archiver.kernel.org>; Wed, 31 Mar 2021 11:19:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 23D946195D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Tg0Zaw3uul0nWWO45vD5q+FDqrs3P4SeHnYKQRuzYRg=; b=ibU0XCJhAIX0MK1f/8FF6AA/l
	E1egM/7BfKRbqhThDSfqr5I6fBnVOQUu6sGKjUPs5hbR15wqKc6LFJ0ejjfEQiFrJOCJ2UQosNGe5
	0Fd9bjqBhD/Bv2fFF+4i5p4XwF7VC29LQiBwk2udZs/Pl4XbEZHf41EO7b5P8WWoPeNDzIrrpzTMs
	QpKp5xK8oMnb/WFfc55MNCMPSJEnMtRiIy5StlZ64OGaPY7hvi7RyirD4M0vO6hNIZXIcaH1R5Ljh
	p0q3O40o06f3OkLh/uIf+47z1DRQfgKpcSGq/kiIvzG0o/kU87fEoMS31IlMKm5+1yWeJdfljTY1+
	T0Fg0iUHQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lRYsF-006QKr-2S; Wed, 31 Mar 2021 11:18:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lRYnc-006OOx-AE
 for linux-phy@lists.infradead.org; Wed, 31 Mar 2021 11:14:16 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id D3F4F6195D;
 Wed, 31 Mar 2021 11:14:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1617189248;
 bh=/qrwf4ibBO5YM+ChG3SK10ENvkb+3yKaA1jC0utRdGo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UUJX/y5dyMN6YghXIrAeqF3rPpo0OPM5RDiZL7X3xzr4P4CkxrLCmkFeBrfKAZOxa
 HroHWzbiW6aftNCRi9Jd23Ckc4zllQn3duzyhI3w8pXul3FdEi7cJWFbh591drMpAW
 mHZtIHfoNkBHlEdEJeWUmdMO3l3LVBUkDzcmefABXaEkNFVKdf4W2VXckfbxgdJbAd
 u0XM5+lJ8q7IIUc5f2Vyscw+dUiremnkeANmEt3Xnf9F842ubs4bGUN1YdAEhqvoVX
 5TILfVzFcE/2C1q9KzSsYc31xPKjTuWqmDQHuaYbEk7xDfRVy0Fiy8aEndK+kn6JT+
 HUiCi61KkuHxg==
Date: Wed, 31 Mar 2021 16:44:04 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@ti.com>
Cc: Rob Herring <robh+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Swapnil Jakhade <sjakhade@cadence.com>,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org, Lokesh Vutla <lokeshvutla@ti.com>
Subject: Re: [PATCH v7 00/13] PHY: Add support in Sierra to use external clock
Message-ID: <YGRZfDnFpmhN89hk@vkoul-mobl.Dlink>
References: <20210319124128.13308-1-kishon@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210319124128.13308-1-kishon@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210331_121413_129720_FA068DE2 
X-CRM114-Status: UNSURE (   6.84  )
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

On 19-03-21, 18:11, Kishon Vijay Abraham I wrote:
> Patch series adds support in Sierra driver to use external clock.
> 
> v1 of the patch series can be found @ [1]
> v2 of the patch series can be found @ [2]
> v3 of the patch series can be found @ [3]
> v4 of the patch series can be found @ [5]
> v5 of the patch series can be found @ [6]
> v6 of the patch series can be found @ [7]

Applied, thanks. I was able to resolve the conflict on patch 4, please
check it was fine

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
