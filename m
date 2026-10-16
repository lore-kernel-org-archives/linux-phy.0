Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2034CCA464
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 10:46:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NbLQ4hjdAmNP9/VMUVMagBLrDFTkMbUA3+LCCY5OSYw=; b=SfnE/WeFl+vMVv
	yQNpK77sMxQqaMzy/NE5oX5mwdK3uqaTpOHTJgqXxnJfOFh3KfexJ/TXYC0AiOB6C2s3CilezWgPE
	2TK0IRiOBXS7PZCAHElJVgY2q4oo+Z6BlBggpc3u8PXzEp6DFyrCTVNJ9odQ2Gktb2NcQ16LVpPKT
	MSw7rB/AIz/q5ZYHSkJJJv17C+a2sTD1gZMt6phvO+5ZoZ0OMExiM9r7qaaxxfcIFZnbRV5HjcsZf
	rscrIWrwIue9/06Y+xSWK7dvWsp5pgtJlEdUQ5gyzxNYY+requG0mCCBftNX42X+kht0a6p6OnLw0
	4VO7iAa3BHwf7McZRotw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHfSb-00000002heB-0vZf;
	Fri, 16 Oct 2026 10:46:49 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHfSV-00000002hap-1FBH
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 10:46:45 +0000
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-48dee593f18so1069736f8f.3
        for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 03:46:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1792147601; x=1792752401; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=GfgvK0qoJ/yilK5+D1Thedz4qLh3Dst8vs6/FyRnv2g=;
        b=XjoAv+JJZfn2Cer9ijEHnJnfVsYxTtLgvNQJU501qo3MCrooYhLMpBTcDvyGc+qk9b
         /l4IZ9ujVVR6MaQd6EjUrVJ5a/XyjeX421pJOcG7QWLlkruHfm1JZDAt065wb/AvosiV
         tLHQkxGVx46bsxlthDp6QV+7C7AfZXMe9LCllItlVu9P1WjHwl197cAAX9wU096eK0wE
         ID7/xOHNvO2r8nMP8BuqIefdeFb8sBUBF0/ugtf6F5V7QRLIUvbaWi16I+YLBr7yLM4O
         Yy/mc3rn8q3+2/HkmfKDdBNhZtMZ+6PZwQj91g4znc+ZMkJJB2V/Vo8/7FiXcXcrkk5g
         ph/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792147601; x=1792752401;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=GfgvK0qoJ/yilK5+D1Thedz4qLh3Dst8vs6/FyRnv2g=;
        b=LhFFRS0NKqjYAfp2LITM5DzbtC24Izf6V/B9dab5PilEIZgSNrEzGNmBZiRzI16LmI
         d6CM5ornurdlwsknnClgQvR8YKAtFQjjIosIupvaU/7Y+nAeOWhnRFjgO1XONcVKNxHY
         MhLS8k7Oof9eVkUy+Q2JKN0P1PadeKioiUSFw8Gdrq2a7wquYeiT5oRIaHiB6YY6QYlv
         UJJexJKJMMV7hI+pQrN7Up+UGe93YefWyGhEAob2hFW7mdLgV4X1Xca0wIFaysVFApQO
         LYG2qV0qfTeOkUQoeGMoWHYR7kF39ppkgAwlbfe3TeajJOaz3byDGkRn42kyL/HLiDVi
         A3Ig==
X-Forwarded-Encrypted: i=1; AKwUvByY+jjQeAAFbq4hXUdLgflLwzHlpRY3XMwPcPSqSXSOgVDphJ1Zuq61kcSyWHHWIuSKAUOV21KQy7c=@lists.infradead.org
X-Gm-Message-State: AFq9FYIMPGaYjYzcAjAh/rTFkmU9Qa1fLWqR09cuN54EgrC5QQKduJ8+
	Vh9yJ4eYXYyt5KcKYpJr59tFTHELmr0OHnMFoaE+RdS6FpEFbLCDXNevxS9/0ViMFhk=
X-Gm-Gg: AYBFou14cF0azhyI1ZG6g9nX8MVSAC/NeGTA4GLiPEmEp5Tc4/5Ib3k7mK6Kraw/f30
	LyQOX62i/lhukb84e58gX8jWUrym5mlGxRuydXF+H/3jURDMepBN4RMibaHyELLxDa1sdz6OYpz
	NuSv1RWCQflZYXzPHN0IuQTV0HChrDGmmRxCzHsA4roCtmkshX1qCQiddwSQ74DQnjhU+LHMh8J
	7VUR+ewHfZHibx+CJiMiQsskZCN3mfLKu148aQuJtk258VaAsTUD24eB7iG4HuUlEPdJKL0R9Ht
	kvny0WMgmXd7dzwbjHzLha9c8COlK0H8cEdsTfSDHRBvkXaaxDX/sPdZsX8yuewVxMueUzlfDkl
	H/kkVwG4lzsmgmYIhwLiLHeAQZWtN9HfzSrHPEWJ0U8IEEpHUTwSrFyHaGUpgzoK38PbCrj3JqO
	vqqnntbD8lnHLZnoiTOJ/fi73lb9daqc1UMArdt8WUnzH7H7VOLbYNd+lvcoaaR/K9/Ax47KBT4
	M0B5+PKW8iqL1WZL+b2Pw==
X-Received: by 2002:a05:6000:46da:b0:48b:68:594a with SMTP id ffacd0b85a97d-48dbaadc11amr31443485f8f.12.1792147601426;
        Fri, 16 Oct 2026 03:46:41 -0700 (PDT)
Received: from [192.168.0.167] ([109.78.92.136])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48dfd5035bbsm4285475f8f.44.2026.10.16.03.46.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Oct 2026 03:46:40 -0700 (PDT)
Message-ID: <f9b60989-e58b-4ac1-81ca-f0d37d4143b4@linaro.org>
Date: Fri, 16 Oct 2026 11:46:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/8] phy: rockchip-samsung-dcphy: Move block-level
 setup to runtime resume
To: Jason Yang <jason98166@gmail.com>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Guochun Huang <hero.huang@rock-chips.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: Michael Riesch <michael.riesch@collabora.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20261016-dcphy-rx-v1-v5-0-e63b49eabe2d@gmail.com>
 <20261016-dcphy-rx-v1-v5-3-e63b49eabe2d@gmail.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-GB
In-Reply-To: <20261016-dcphy-rx-v1-v5-3-e63b49eabe2d@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_034643_337335_52B18074 
X-CRM114-Status: UNSURE (   7.33  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 16/10/2026 09:56, Jason Yang wrote:
> Program them from runtime resume instead, where whichever of the two
> comes up first brings the block up and a second one no longer resets it.
> This puts the BIAS writes ahead of the per-PHY reset assert, where the
> TRM's worked example has them after [1]. That is safe: neither M_RESETN
> nor S_RESETN covers the BIAS registers, and the values written are those
> registers' reset defaults.

Would you not be better off scheduling a work job when you know both 
blocks are out of suspend ?

That way you always have a known sequence out of reset ?

---
bod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
