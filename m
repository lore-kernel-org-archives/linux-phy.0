Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73645D778B1
	for <linux-phy@archiver.kernel.org>; Sat, 24 Jan 2026 00:04:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nk3sY81rM8x3173pPaAiHAUJhYWdCDViRLGHnSH3AsY=; b=qE+vEdcokZgwiQ
	WcPptRWuv25TojXdZuGfhfomXoBVhnE6kEqn/+U0s5QTN3/Q5YyYxWVz70KLY0ox4lXNnZ+/3CMaA
	z+CXEmXUnQ0wCuDpT4GmTXjAMn6wL7YD07JhjUyfPfyl7ytG7cXrgXI1E4vRwHsSl/HQukxuYZeJv
	K69vQxxbFAjly6dLJLw+SqbuCRyHUqfWtc4VSBs7WUzpniH02jjm8e0umVQl1Dn6txe75eExOzlhs
	Emcjf7k779xSnJG6LAdfCCP5y23KLICkyFoL9fP4V2zlNyEHQ+7XwTxOPHuACa7fKRBtzTMVIoHv1
	1VaoEo2I8CLPnuvA2pLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjR8U-00000009bAq-3kz5;
	Sat, 24 Jan 2026 00:04:18 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjR8R-00000009bA2-2uJu
	for linux-phy@lists.infradead.org;
	Sat, 24 Jan 2026 00:04:17 +0000
Received: by mail-wr1-x442.google.com with SMTP id ffacd0b85a97d-435960cf63bso338619f8f.1
        for <linux-phy@lists.infradead.org>; Fri, 23 Jan 2026 16:04:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769213053; x=1769817853; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=6r2QurZAQWCjh0fiFFVfKXSGYPjUAsKdH07r9CUR7DA=;
        b=kC5GmJNmYpfl7Ahg5nVID8eEDY3zEKPpFEgc1xsoT/yQYx/r6ZY3fNrNxiHtqjssfu
         K12LmBLLoBJBFVv0xoXkZS92ELb/EvTm1+etPxzRkVNhGK95655hgJNkY/IR6BQ4lwTS
         qAWmXJ8WjMB+gyLybnKnSXUCmd+BNaMeXs2ewIkjw5XoarDlM604Z2tsGJu0BuXzdqKj
         JlmVmKQsI6ms1zNM7uXC18fC84QM9Z+6vneOBGP7Ti+pNlYuwHI5gx8VpWm7iTLfONfu
         BZqdyOnhnuBl4DGEvLZZUjHO0SsCBTo5JixeBUNWkU+OytTTFzfvO3eRY8UV7X+ZpdhB
         OETw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769213053; x=1769817853;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6r2QurZAQWCjh0fiFFVfKXSGYPjUAsKdH07r9CUR7DA=;
        b=caAwFQVudX8y3pYtts929aBR40+xBBxcITlBp8MkBouR63vbawdulnbKkK9VuqiSEV
         f738rYsSb48xTi8DdACNEToZ4+VTPMoS3cwPrmYySFL9QJf+QddTPIBgLvp/wyjv6M3B
         Vz+YZ29kcXeIKrhndzLEuDrUvFNivw2ZKUqXpx6VL4t4cNsIep8k1ZN+LebunPro6aIU
         OiuhOnOMl8pwanlqf2IOMCv/oeqw7jXDLFtznTNhz9zgCHyBtUIC9Fh38Z7/qI/H41xs
         rOPJjWO4hKGFHmSp+49yRp9LycwtG11eBvKJKnZVT38DheGmtoUaNtuzW2SovwQ73DQ5
         N21Q==
X-Forwarded-Encrypted: i=1; AJvYcCUctbDUnDmQHHt6oW3G1itaWfRVP2C+/m7TUl0Orn/FxmO9HFNqQ84TaPPtIZnIS4qfap0Oi9PSrVw=@lists.infradead.org
X-Gm-Message-State: AOJu0YyJrDDYN0cWWbbAykebt1VLHoT3uXApqMW50u8VkazvIOTSsB62
	MbgQ/70hB6WLXG+RifEXMq9CaeKELfOM3mfA+b2OIm8s1Yzzjve6Wq++
X-Gm-Gg: AZuq6aK6MzBNJuKR+v9IMKkF+DkBmPDMHn8Jo9AkmXbRD3UHTDTDl0uWpf36ggTOu6Z
	G2GKI8Go7rTWHLSuvFYl/O37WP+MK+0LxnAGHrDIxbY4CTlTgYet3r0FXd4fGJDXsB7jPqlVI0k
	xGHogdDePSuSLLjYe9Jgfc7qxeMYM9ortPTNebLVgHsqZh9J2JObuy3VtKbfvK61MjTNvy+5Q47
	8DHHZ05q2/Rt8uXUHe/dbnZOCEkbPcxnx+ulpLfJIfndSYt6YGOnJ1SOCL31aUeaKLLZz6OZ9GV
	QR9HW2dvRZhJbcOoXy+ZTbL5ZAZAgezUGKz/6gWF8Od5Z3NLOoC020JOYqJQGGi4Kh11fpSBVMS
	nN6MMIf1tZ6CJeRqU/BwmIf61K1ekuWlnKpENbGIFFXqHFgpyUUOXkXCImV9I6a/c/nIyLU4+L1
	Yqkw==
X-Received: by 2002:a05:600c:3b29:b0:47a:8bfa:bd5 with SMTP id 5b1f17b1804b1-480541f9e3cmr11110495e9.8.1769213052988;
        Fri, 23 Jan 2026 16:04:12 -0800 (PST)
Received: from skbuf ([2a02:2f04:d501:d900:1430:8b48:2d45:6c1])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435b1e716b6sm10359890f8f.27.2026.01.23.16.04.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jan 2026 16:04:12 -0800 (PST)
Date: Sat, 24 Jan 2026 02:04:09 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc: Andrew Lunn <andrew@lunn.ch>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>,
	Neil Armstrong <neil.armstrong@linaro.org>, netdev@vger.kernel.org,
	Paolo Abeni <pabeni@redhat.com>, Vinod Koul <vkoul@kernel.org>
Subject: Re: [PATCH net-next v2 00/14] net: stmmac: SerDes, PCS, BASE-X, and
 inband goodies
Message-ID: <20260124000409.36nsxlvkde4zpddk@skbuf>
References: <aXNEwBW3OA1xLEUj@shell.armlinux.org.uk>
 <aXNX1oi7nWLcPK28@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aXNX1oi7nWLcPK28@shell.armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260123_160415_751378_E7A527DE 
X-CRM114-Status: GOOD (  12.65  )
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

On Fri, Jan 23, 2026 at 11:13:26AM +0000, Russell King (Oracle) wrote:
> According to patchwork, this doesn't apply to net-next. That's odd,
> it was generated on last night's net next, and although there has been
> further work, it rebases cleanly on top of this morning's. How can
> these changes:
> 
>  drivers/net/ethernet/stmicro/stmmac/dwmac-imx.c   |  6 +++++-
>  drivers/net/ethernet/stmicro/stmmac/stmmac_main.c | 20 ++++++++++++++++----
>  2 files changed, 21 insertions(+), 5 deletions(-)
> 
> which happened in net-next overnight result in this change in patch 1:
> 
>  drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c | 3 ---
>  1 file changed, 3 deletions(-)
> 
> failing to apply?
> 
> No, patchwork is clearly wrong.

Conflicts with commit dc6597fab3e3 ("net: stmmac: dwmac-imx: keep
preamble before sfd on i.MX8MP"), merged in the meantime.

In include/linux/stmmac.h (your commit "net: stmmac: add stmmac core
serdes support" adds a "struct phy;" line, but that other commit
modifies the context by inserting:

#define STMMAC_FLAG_KEEP_PREAMBLE_BEFORE_SFD	BIT(14)

(the last stmmac flag in your context, at patch generation time, was:
#define STMMAC_FLAG_HWTSTAMP_CORRECT_LATENCY	BIT(13)
)

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
