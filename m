Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A12E2C9830D
	for <linux-phy@archiver.kernel.org>; Sat, 17 Jan 2026 00:25:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lv9VFGggK50fQOLyQSfJ4LIqYYG88v4Duc+G+W2P0u0=; b=jxFIdO5ABLJ/7w
	GwU+kOwrxzZJ9g7RwlsFOf9dQ7RgpRBGGu32x7duZwiGz8N6+wMIFmLgJAxs34RxA6VB40HQNgqty
	nbPVTsbHsV1QkBrzXqc4raS8MN2N7upVyqbRQ8ROLotRlbVZCd3HaGiu/y7k+SHK3OqgTjVSytaYt
	jK2qVBqHrJg7ECtAJY3emnvPdB7FcNr/GibhAuGfA1BZukjHiFfLgewlDKSYLcO3oO4v6S+FwX7be
	ngziAr/gJqZKNe5C638iGskF2VKdJ+NBNOqVs12pR36plE0wgsgNOAsZhR92C4OvPmMQ/Gwo73gcg
	d4hUnkYtMUb+n3PHEJLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgu8R-0000000F3Eb-1BWw;
	Sat, 17 Jan 2026 00:25:47 +0000
Received: from mail-dy1-x1335.google.com ([2607:f8b0:4864:20::1335])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgu8P-0000000F3ED-2ZQt
	for linux-phy@lists.infradead.org;
	Sat, 17 Jan 2026 00:25:46 +0000
Received: by mail-dy1-x1335.google.com with SMTP id 5a478bee46e88-2b4520f6b32so3735384eec.0
        for <linux-phy@lists.infradead.org>; Fri, 16 Jan 2026 16:25:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768609545; x=1769214345; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cs/w5dukbECq6vP+JVY/PT3LY1xl+bSBRNaUMsBTQvY=;
        b=nKYpeprg1CC/U0GhUuA1A+RItS2NcKGmv8YPew8Hy2h4RVRCJ0vRp7QBDRWqMJxNf/
         qtBRnDivMysfv8rW+6pM6JqO5KzT9XczC25Rhi4iVaacksg8ScgOpYKAxwtrCw/VmDN0
         BVhxdig8KQ6QpMwa0BuUjir4N3snRKFsiejSB4svOXyi53A9Y4g9JrIW4dFQHkZrQbhS
         IFcP0or9lipoEmZgZCiZvS8wt4Rnh9s/jtVsZJHcitoeLTIOWZSQHx1iLxPnuiYHxjBW
         VjEoiPecN3jP4G3Q0L34ReKnk8R6Wj3fJKylxX3iv7qFP0IHK/4X2aMMCHwEfAo8ozuG
         vBUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768609545; x=1769214345;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=cs/w5dukbECq6vP+JVY/PT3LY1xl+bSBRNaUMsBTQvY=;
        b=qyjWsuL5JeEzuw2GAP6xR+UEeEuJsElca/Xes3M2TXlw6T4iT7joeOGNgzm1xftOXz
         SeEmGCZgWtFn4Ni/SgfAtMCmu0nj0AwvZbraSRJaFL8PLQNZ8MiiSAWzjPDY/NX7lSEi
         l0HBeyIFTrUDzfIj9PFD1LY1JOCTonEEklpusqazehUnlmwf3G8OyeOk5TfBGD8GwXiP
         TwObO1GJZegBeVBuP3vAeetMl8tAa4ZCWk22lLvbNsOCS+SkV+GeGyLJx2Dl0EtCVSmV
         2bnY3Fkwy9onGA9L5DJqvMdKE9ceavp94uSI+x++zgqCzgwBCHf/rrWfVU1TvHxWggW+
         73rw==
X-Forwarded-Encrypted: i=1; AJvYcCU/9rjC0jNLeoXrmhEdbjoBe7sc+/DAqgoJYH21WoBnIVY3yTC79w5zPOJlPUUmx3jQ38wBv8Shsm4=@lists.infradead.org
X-Gm-Message-State: AOJu0YwO38oq4Bz4OMz76ZY7xQnl/6ePH8tuMMm7GoS9VRe8GCUakd4A
	Y6lrCUpa29wAynMaH4E3bnOQBB51GKKN7RPDoxkCq37VKjs9SfFyzOwt5BkeuHxJ
X-Gm-Gg: AY/fxX6ywnUzxzSHzQVX0qfg+iioouxDgx36DFyME6aHj+gMk4uJiX+iiXR3g1DGMoD
	+39nHPwHxUG7EFrFdqTMPnIpLtTsAbT2/cHGdL7/fgnYSrNUj0rIxLw6X1qTfgcfQZkp2XkZ6bt
	gCVIDTVAp+R2ElXEGm3af6fzj0XFTfVtxEMsdpPI3Yd3+8Oau0LqRO9pybXy11yMa4SbSLuRUSE
	5+prKBlYNIYKp/B/WIHD9yrwbye4BmUAmZVLWDhRuOOnqhojUY3/Jp9+hKgHhoUZCFE7F57FtQ8
	BdhYIhetGLPKS+vXbrY2S9sn4UqSViwPtn5hy6Odni27fJ9Ho6hSq8r4JqYcYQA7cP42/PnrT8m
	WrjQeIS98DjVYH67wh7cGjKbvSNo8xUgDoU5T9LAKKr9rjz0+wB1ClRYLyFaZFQ6XFy9tStHr0m
	H+kKyptUWWlL71X0DIG78DsXfXD1MjzAhJ8G0CifSr4//2NUNR9F9UKSi4gMTrjGRTw6bxcYM4E
	S1NI6mXRSbxPkrbpg==
X-Received: by 2002:a05:7301:2e87:b0:2ab:8ef5:df2 with SMTP id 5a478bee46e88-2b6b40f0c13mr3046636eec.35.1768609544724;
        Fri, 16 Jan 2026 16:25:44 -0800 (PST)
Received: from localhost (p200300e41f0ffa00f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f0f:fa00:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b6b3682540sm3944277eec.34.2026.01.16.16.25.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 16:25:44 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: Mathias Nyman <mathias.nyman@intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	JC Kuo <jckuo@nvidia.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>
Cc: linux-usb@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: (subset) [PATCH 0/5] Fixes to Tegra USB role switching and Smaug USB role switching enablement
Date: Sat, 17 Jan 2026 01:25:33 +0100
Message-ID: <176860947663.1613073.5692699224170959766.b4-ty@nvidia.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251204-diogo-tegra_phy-v1-0-51a2016d0be8@tecnico.ulisboa.pt>
References: <20251204-diogo-tegra_phy-v1-0-51a2016d0be8@tecnico.ulisboa.pt>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_162545_654451_108E35CC 
X-CRM114-Status: UNSURE (   8.99  )
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

From: Thierry Reding <treding@nvidia.com>


On Thu, 04 Dec 2025 21:27:16 +0000, Diogo Ivo wrote:
> This patch series contains two fixes for USB role switching on the
> Tegra210 SoC, as well as enabling this feature on the Pixel C.
> 
> The first patch addresses a wrong check on the logic that disables the
> VBUS regulator.
> 
> The second patch guarantees proper ordering of events when switching PHY
> roles.
> 
> [...]

Applied, thanks!

[4/5] arm64: tegra: smaug: Complete and enable tegra-udc node
      (no commit info)
[5/5] arm64: tegra: smaug: Add usb-role-switch support
      (no commit info)

Best regards,
-- 
Thierry Reding <treding@nvidia.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
