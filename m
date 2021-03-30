Return-Path: <SRS0=B2Kc=I4=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69F0AC433C1
	for <linux-phy@archiver.kernel.org>; Tue, 30 Mar 2021 14:13:08 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 15BBF619BA
	for <linux-phy@archiver.kernel.org>; Tue, 30 Mar 2021 14:13:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 15BBF619BA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1na2uqu5/wIQ9r4VS7DwdgNzK/SvzMxWSI+PHfCNqsw=; b=e+F0FCK32ldUVDzMN50vRKat7
	Inae8OSKOPIBr8lEo/JNYb6KL02shwxq/oNJpCmQdD1Sntk3Xz8LJlyMskPvu/tPrD6DXqvQWkVlh
	LLYEcbtyDUwzOuwnTUBDqLF2hgLotH9pXeivFm3kB2zP8zAfWcJn39Fl+Xvvc42yz/BYywQl9+lE1
	wZv3n2ZUjnf0mKodZQcBIs5yEAHCds4ajXnV07jXsVpq2FHkMiA508TOjQJHpt5BPKtNm6q+lWSvQ
	lGBvjfI8O67iItCrOZeqFkZ9xdmKqp3bnEL8iRl8VrrMkJrmnL04TPKpLHNyI58OmIC+mz3iFv3SL
	Ctjyeldgg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lRF7C-003xKD-5y; Tue, 30 Mar 2021 14:13:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lRF77-003xGj-DO
 for linux-phy@lists.infradead.org; Tue, 30 Mar 2021 14:13:03 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id EAECE619C7;
 Tue, 30 Mar 2021 14:12:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1617113577;
 bh=3EtIj/RWbuCW8vrJE3TlniTyeTl35eaNnhpLSPK0Fe4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Q5wC3BDexHUQ+B03VrMn1iqwD843Ut3sKwN3zm10ZiJxwdntLFeQMW4Drlmi3EYnu
 fsstGHcNoG9rkZFNO8pbmAhsX3dmQCT8OQaLZEPoMcwQTzNelsjkebVwBKsYFFYukI
 SJO0d0xNk9onsYknDkBbGpbzh9oSsgPY1OH+lLEk4i9qnO4wjs3y4U7vngOJj632XF
 tpd5H4GS1sHC036mRaj3FGFYdKhLyvkquIzE6eXN4pXP14q98gyDT0wVqq6p4X4YZd
 KeXy+kMfv0pQX2HEhw42KIQXo1thl37p8/JZ++QErXiiqNNuPJTgM5JewU4curDKm+
 jeHOLhDOx2FzA==
Date: Tue, 30 Mar 2021 19:42:53 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Thierry Reding <thierry.reding@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Mathias Nyman <mathias.nyman@intel.com>, JC Kuo <jckuo@nvidia.com>,
 Jon Hunter <jonathanh@nvidia.com>, linux-tegra@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v8 03/13] phy: tegra: xusb: Move usb3 port init for
 Tegra210
Message-ID: <YGMx5cLmX+d48XKO@vkoul-mobl.Dlink>
References: <20210325164057.793954-1-thierry.reding@gmail.com>
 <20210325164057.793954-4-thierry.reding@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210325164057.793954-4-thierry.reding@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210330_151302_238136_6252F1E2 
X-CRM114-Status: UNSURE (   7.03  )
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

Hi Thierry,

On 25-03-21, 17:40, Thierry Reding wrote:

> +static struct tegra_xusb_usb3_port *
> +tegra210_lane_to_usb3_port(struct tegra_xusb_lane *lane)
> +{
> +	int port;
> +
> +	if (!lane || !lane->pad || !lane->pad->padctl)
> +		return NULL;

This looks problematic to me, so if lane is NULL, it will still go ahead
and check lane->pad which would result in NULL pointer dereference.

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
