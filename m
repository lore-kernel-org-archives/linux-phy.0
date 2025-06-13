Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46A4AC71148
	for <linux-phy@archiver.kernel.org>; Fri, 13 Jun 2025 16:14:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8uejcv7p/XR5RHD8orRAwLScWnW7gSKcm2U7dlqv36k=; b=b1pydlGa4KJod8
	gB+RBLgvwZIqO8oWsAeqnNiEHYXYN+I2RX4Ih5ZTtQwQiyUQ8JV4QkTH0Di920y5lwA3m1vNPh432
	3tzxiT7VLgrhZDlPrtFH7qXlLthXqWNma8pEBoqSohBVVop276tG8NHULxXfDfec3FHqt2j3eFAwe
	fSQVX8Cs2zAyBEy3PKBCIPEq2wbjdETzmjgYJnOAD+gIFS0yMM+HcGc3Fhhe3C2n1yB/mpDpM8Kt3
	8Gm+AUiLNz9FUrkbPInEirhHv8DtnZ3s9TEs4clRFw54XErBbNp5QbK7PcnVwx+aLawm2349jtVYW
	GHHGg5T7qaw/JSrbqJ9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ73F-0000000H1Wb-03L7;
	Fri, 13 Jun 2025 16:14:45 +0000
Received: from mail-pf1-x434.google.com ([2607:f8b0:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ5lg-0000000GmCl-0el6;
	Fri, 13 Jun 2025 14:52:33 +0000
Received: by mail-pf1-x434.google.com with SMTP id d2e1a72fcca58-747e41d5469so2466236b3a.3;
        Fri, 13 Jun 2025 07:52:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749826351; x=1750431151; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=nX9ttAjMiBk5GnAWKnbFZ+j4zoLGHNZodgimLxzGDTU=;
        b=ijaTCxka06PU8Jo0FgGr5yj0GsCA03uphvnaEa1qS2M3t1j+fYIbQ0U4mXYbCpuq/D
         fV+5RxkCqz5tf5N+xXnz0cDQQxdkLncn18oJtilBKTiDPxTXsbkEY1nCXBVmICG5Swcr
         CpaweikPPS3GFO9AbPGu6u4hpxhHRNWpsy7nIhzMZbQXB7vuYDs6koEtqPgrrsgZOxAY
         djGmN0wgF2vQTVVAIsTHz7vUEiVQ1z8HpBRTSNqWLPUQdn+xvLGL9KjfwaoPh3v/cYCT
         bosNLXuwEKcJtXT5N/jftyQaDvakqU+ZikMu6eKLdk8rRgGEJOLrFsLzmv9ahQDiBTwN
         sh5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749826351; x=1750431151;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nX9ttAjMiBk5GnAWKnbFZ+j4zoLGHNZodgimLxzGDTU=;
        b=lIrTrw2grzkW9BuD2gcWiTtb7InYN1kGKA6+UDb8jWehk95bq0opvCWGCC99yR29bj
         XQe4NTnbR/4SS3xj7TsFlJhCiwOeJXXopd2A2FAunBSyGN23LDrJuhF2JnfG98LKxNYv
         Ra6aS5l3RnDHhLTZbXZD4SZdE9SCXulRzyCYCcoUgHGzkQNamOlC/ngG39rol7RhwZgw
         EZ+rhzQxMLZBe2v/dOCzg5P43Ap4MLIlZVO3eoeHbcY3m5bUjRxGlDEZwTN/A4L/jLqz
         2V+dnJGeBahq5HFSNfAFd7HyQyUcMedjxERwrf5VYVB1+wX1Ew33nZdubdobTGLwdiCz
         bpSQ==
X-Forwarded-Encrypted: i=1; AJvYcCUEhy7nQ2Rg5vdfLLqyxLYEWNZrPZnh9dDUBVCjeUolW9AO4Dlhe3yrfp3AOftwIsnD7XRVdQY1u3rO@lists.infradead.org, AJvYcCV/D7FXHr8OqXYSEgB4io3q8uRiXaEHi509bFsLCd9yFndYLwUHPMhfvU8TOHB7PhGvGM6HEPp9wys54pkHvk8=@lists.infradead.org, AJvYcCV4yCPIhec623leVMpW0GV3t2ckgsEVgWebodl2+FKnCgmu+9dMT46iT5aBIOT/+zKxu2YLe/6aErpTxAGIDpPW@lists.infradead.org
X-Gm-Message-State: AOJu0YyxMeUODFk9NEQ/7sKejkuwKq+fynLaAGXFZHJ8kF9xL2do0awY
	k/BYLfIy+bUCv8rXrFxPMLqUj0PKI6t1fMi5/mX07IHlFUZEXaZX5hVu
X-Gm-Gg: ASbGncuC94atHoukDCo0GlKbPSn5w40afSlvwmiGjjTfqah0TJXbv9gKNVEA/jaFCTD
	gVVYtxugau185AbCcesaBky2rP1iKvJAcV3fz2auK95WQvIACtoST2HXzxgX+VJWFIE4jOrsQMr
	+qiiGBDiKsOOEPb5XRuPlcAJrkmGr2Lqje+g90Y4GveUo+c8ghJgvQMcVcDWnjv14806W5NgeJz
	0YQKsrxNKTFxXQAskVqI4hqUx/gh0GfkyFun286PoBDya1rnf0xsOpYg1+rGubFcuDpmXIHSY9F
	+a1ZP22UjnMKeUyHERqO4wjjAFWWD2YAhI6+TPZsQusJ0OPvVKskcq8CK3AUBA==
X-Google-Smtp-Source: AGHT+IGmduwXbHVfGIDlskqKLcCBNDCHGWRFnOFCbxfY7iXbpVq03NTOlkVGcUndD/CI3gBb8mRMVQ==
X-Received: by 2002:a05:6a00:2d8d:b0:742:b3a6:db16 with SMTP id d2e1a72fcca58-7488f7e38f1mr4843190b3a.20.1749826350828;
        Fri, 13 Jun 2025 07:52:30 -0700 (PDT)
Received: from localhost ([216.228.127.129])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-748900cbf58sm1723692b3a.148.2025.06.13.07.52.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Jun 2025 07:52:30 -0700 (PDT)
Date: Fri, 13 Jun 2025 10:52:28 -0400
From: Yury Norov <yury.norov@gmail.com>
To: Robin Murphy <robin.murphy@arm.com>
Cc: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Jaehoon Chung <jh80.chung@samsung.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Shreeya Patel <shreeya.patel@collabora.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Sandy Huang <hjc@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	Qin Jian <qinjian@cqplus1.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <nick.desaulniers+lkml@gmail.com>,
	Bill Wendling <morbo@google.com>,
	Justin Stitt <justinstitt@google.com>, linux-pm@vger.kernel.org,
	netdev@vger.kernel.org, llvm@lists.linux.dev,
	linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org, linux-clk@vger.kernel.org,
	linux-rockchip@lists.infradead.org, linux-sound@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
	kernel@collabora.com, linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Subject: Re: [PATCH 01/20] bitfield: introduce HWORD_UPDATE bitfield macros
Message-ID: <aEw7LBpmkfOqZgf1@yury>
References: <20250612-byeword-update-v1-0-f4afb8f6313f@collabora.com>
 <20250612-byeword-update-v1-1-f4afb8f6313f@collabora.com>
 <1437fe89-341b-4b57-b1fa-a0395081e941@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1437fe89-341b-4b57-b1fa-a0395081e941@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250613_075232_200211_5FCFB532 
X-CRM114-Status: GOOD (  25.47  )
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

On Fri, Jun 13, 2025 at 02:54:50PM +0100, Robin Murphy wrote:
> On 2025-06-12 7:56 pm, Nicolas Frattaroli wrote:
> > Hardware of various vendors, but very notably Rockchip, often uses
> > 32-bit registers where the upper 16-bit half of the register is a
> > write-enable mask for the lower half.
> > 
> > This type of hardware setup allows for more granular concurrent register
> > write access.
> > 
> > Over the years, many drivers have hand-rolled their own version of this
> > macro, usually without any checks, often called something like
> > HIWORD_UPDATE or FIELD_PREP_HIWORD, commonly with slightly different
> > semantics between them.
> > 
> > Clearly there is a demand for such a macro, and thus the demand should
> > be satisfied in a common header file.
> > 
> > Add two macros: HWORD_UPDATE, and HWORD_UPDATE_CONST. The latter is a
> > version that can be used in initializers, like FIELD_PREP_CONST. The
> > macro names are chosen to not clash with any potential other macros that
> > drivers may already have implemented themselves, while retaining a
> > familiar name.
> 
> Nit: while from one angle it indeed looks similar, from another it's even
> more opaque and less meaningful than what we have already. Personally I
> cannot help but see "hword" as "halfword", so logically if we want 32+32-bit
> or 8+8-bit variants in future those would be WORD_UPDATE() and
> BYTE_UPDATE(), right? ;)
> 
> It's also confounded by "update" not actually having any obvious meaning at
> this level without all the implicit usage context. FWIW my suggestion would
> be FIELD_PREP_WM_U16, such that the reader instantly sees "FIELD_PREP with
> some additional semantics", even if they then need to glance at the
> kerneldoc for clarification that WM stands for writemask (or maybe WE for
> write-enable if people prefer). Plus it then leaves room to easily support
> different sizes (and potentially even bonkers upside-down Ux_WM variants?!)
> without any bother if we need to.

I like the idea. Maybe even shorter: FIELD_PREP_WM16()?

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
