Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79138D39013
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jan 2026 20:48:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YTRI0OYeP9xx8WAfqdO+pVgu0cAZkxk6BIYl856n9LA=; b=vkMCQqsz3KeE9z
	4KJELgcLqhvSx9perB0wj/n+00xSpgxeTT/6sl75YHWj43zCJI0OgJDPQbqHvC9DOOlc76Hx/EmxC
	ZtHxXrKXP4g5O0zPnabYjrnc734GCfAOtduLsIdllKOxwFizav6+c5+iQTNACp9RY4fNZPqPsEalM
	FFwqd49P32qb4hdqkm+WFdMw7tCUb7uqZLTwXGqhQ5Jauvjpfc0saSgCGoa8HI78PI9UhztdD6U67
	zH1DqkuY/EBrI8VxYzkeMhBtnVANQc5d7hzHon1XFioPX6sz8HbMQfLBat0GJtinchRDmG1MFCfMS
	Rm3xtafKmo27NnQb+1nA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg7nP-0000000AgPZ-3lRw;
	Wed, 14 Jan 2026 20:48:51 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg7nM-0000000AgOu-3eVu
	for linux-phy@lists.infradead.org;
	Wed, 14 Jan 2026 20:48:50 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-b876b5c69baso4983766b.0
        for <linux-phy@lists.infradead.org>; Wed, 14 Jan 2026 12:48:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768423727; x=1769028527; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=it8YUnHSXKXXQABJkL2UVvwmRP+gSrkDN7MsvYyaZ9k=;
        b=Z0HyxJZab+G355VcpkYqPtX+2n2R3B6OMaXdMRBijS5/jku1Iyss97nAZu7hnv3oGt
         YDQOmbSBxffx4sGlt3i7rSFS30glqzdwUezWU0Jfh0gwE6sunGPi79JqbUx2HLfupcEa
         YE1g5p1NwCgz/i1ESFE2SP5SwSAc38UyKMJ5tMmei4vgcjL63+CHELs8igIz/uLyJTaB
         7+ntxOgVgkLFyDiBl94tAQBxF2y/LSr0slLuUywnoFubN7MAQxzaWW4Q+pIGIVu8RJas
         shKLKyvvqHP4Okz7xhuZpHGs7Mq/pcE+f3MEQvZhDeqaaeIk6WlztyYARbDY/zZfsfEW
         1D9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768423727; x=1769028527;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=it8YUnHSXKXXQABJkL2UVvwmRP+gSrkDN7MsvYyaZ9k=;
        b=DXhLP9wVxpRmMiAK0Y2dPK0xAXFhRXJ+1AK3AWbgz3rnnk/jafLohYo0L9A5v3m7uw
         hY1dMzeHsq4SZSFPKagDaa8vTsHMOcqi0TWToFBoTtmTSeiR4SYWppnZ0FfaRU45Mxn/
         BLJEmLuAoVcgDAEVn1uVw3yVUFFSMQH672fwnw38KHdrnjZeOyXAQkNX8ga+w2quu7MH
         d6Jh08RiIp0eybIsk7LbKpsF4CsoNX9Dq4DF5I/LQJiggrlujTiJbW93poTtW15BpKi4
         xeKB7b59j5SW+9ODzidUhrCIrkFCtuY8K3LNznXHK0Hnfdk8ZxO+NWnwmwjgH2+uzvun
         cdIg==
X-Forwarded-Encrypted: i=1; AJvYcCUHwrrI8P1gWxr/GqVq3CnceOPKrFiUjUv4SeR5Ubxsv8IJRvi7RQHJ7VRUc+FI28qryi8r0ie/pcg=@lists.infradead.org
X-Gm-Message-State: AOJu0YzqSOAbvSvj3LSswPekIMCPYVL9msSGN+9zrg9PbtZTZ9Q/1g9u
	H/abgSTFHmHHAW6zOeXmUkkrqN8eUEORWfJz+LiEB645W1zvseMhpudo
X-Gm-Gg: AY/fxX6hly5iCi2kP9iD7Kbwk5763KSopPlvOC0e7zj2TyalObt6lFda3cAGTJZb1MP
	6AURePW0Tp+G0otCHslnVPswxJVv7/6hnJfm2kfPJMOqg4hgqYKtBZ1WHJCsa+7y/bfLApIeHhT
	Zw2GumNA2iIFLpf9Cw9UfORIpcpte5bfN5yFEt/EhVTYB+vMdY9oDxTF5FGry6rsbWQ0OgvIfpK
	L8vhbbDWf9i8a8zhcF4uOcy0Qjo0jXQMdSP98lBYuDzPowxrAPextFA2lL9YZq8WtI/adSPhOkS
	95Trb9OZuh5PeAdDm5ImtZ9TY2Fdn9GktWx5dlL5JxxyKRNy/JeQu9SC2WHf7NDwyI2Mo2Tovd/
	Hdpx0vqho0nHUpLlgpYrw1z2YQbJAkxzq3O2g3bIVCA4HCoQ33Rs+wZCseswAM78rrlFpBq443a
	K8Eoc=
X-Received: by 2002:a17:907:d1f:b0:b87:2780:1b33 with SMTP id a640c23a62f3a-b876114f9b7mr180435166b.3.1768423726590;
        Wed, 14 Jan 2026 12:48:46 -0800 (PST)
Received: from skbuf ([2a02:2f04:d703:5400:9b39:8144:8a26:667e])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b870b0dba4esm1111374666b.17.2026.01.14.12.48.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 12:48:45 -0800 (PST)
Date: Wed, 14 Jan 2026 22:48:43 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>
Cc: Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>,
	Neil Armstrong <neil.armstrong@linaro.org>, netdev@vger.kernel.org,
	Paolo Abeni <pabeni@redhat.com>, Vinod Koul <vkoul@kernel.org>
Subject: Re: [PATCH net-next 01/14] net: stmmac: qcom-ethqos: remove mac_base
Message-ID: <20260114204843.e4pyfb64n5jn3wop@skbuf>
References: <aWfWDsCoBc3YRKKo@shell.armlinux.org.uk>
 <E1vg4vi-00000003SFh-0Abn@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E1vg4vi-00000003SFh-0Abn@rmk-PC.armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_124848_916623_8BA68420 
X-CRM114-Status: UNSURE (   7.85  )
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

On Wed, Jan 14, 2026 at 05:45:14PM +0000, Russell King (Oracle) wrote:
> Since the blamed commit, ethqos->mac_base is only written, never
> read. Let's remove it.
> 
> Fixes: 9b443e58a896 ("net: stmmac: qcom-ethqos: remove MAC_CTRL_REG modification")
> Signed-off-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>
> ---

I think we reserve the use of Fixes: tags for user-visible issues, not
cleanup of dangling variables. You can move the sha1sum and its commit
title in the main commit message body and delete that tag.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
