Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FE94606A32E
	for <linux-phy@archiver.kernel.org>; Mon, 23 Nov 2026 11:26:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=R78GHLHF;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=RrTCSaQa
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Subject:Cc:To:From:Message-ID:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=P0sGVYtyeY8q+nAMGLbe9BDS/NmEBt1eNsJ7CsU1dHA=; b=R78GHLHFLNrgBVDsrQPacXKWMZ
	dfhV2XfANDBAcbaF2SH/nvMNPWFHH0iog4Vm267Pj/HJQ723/96UIKvw7C4Jg8SKluaQQ6YI1ZCyG
	HcF0Qg+4wprQWxvudpLcj6MQK+T5XW0pEPR9od5nkzUBh/0ldp9NhS5XgXllWk0uwrokaiXEvloCn
	sb8Kfhonfdc0sHmhPoohS49V8/dnfAGu1+kVzxga3BY1PSMlOmL10V3ZZyNMIvqB3gckKCg3i8D3l
	oBdXCfgQ1VMDKuHPinBfljU6J3oyoNM5/zW9TgB/HRbnM14/qXp4JEdR3B1t5/Ug84rJTokBpa2mi
	EHElVeMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVSBv-00000003Arp-3xWh;
	Mon, 23 Nov 2026 11:26:35 +0000
Received: from mail-pj2-x04.google.com ([2607:f8b0:4864:39::4])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVSBV-00000003AZ7-0FN2
	for linux-phy@lists.infradead.org;
	Mon, 23 Nov 2026 11:26:14 +0000
Received: by mail-pj2-x04.google.com with SMTP id 98e67ed59e1d1-3b10718b387so1717590a91.1
        for <linux-phy@lists.infradead.org>; Mon, 23 Nov 2026 03:26:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795433166; x=1796037966; darn=lists.infradead.org;
        h=mime-version:content-transfer-encoding:content-type:references
         :in-reply-to:subject:cc:to:from:message-id:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=Io7ujKNNt7SQhbgiNtNsmPHGRtWoUuLSgdS1AFaBjnc=;
        b=RrTCSaQar6O56fzuxWjeQSklERoAKUhngQD7O1+a8nT3mgEj3FRJjEDfflDlGjh+ym
         M1hV3IclYwnWbz/earbxFj3o11aCBjsRJslhTGGqznI2TQhpQ05YjnLsWLvHFLWoYkU1
         onL9LbUI71g+hJIH04pXS80OVmQf03ujgcAJd8xoZzyM4/RAgXwBKgpbxpnbfKEUi07B
         swTwGZZFByWHf4WMbtiHZu4/Av0rioEN7proTSkp+SPrZFYFQ+4d2URFFHIFLLg6ItG1
         9ddnoWxPgnotv/ixb8te8obtmG6NbEN7DbN7Wp/o51FMNicXZFeh06sKgyMKkk3qMSHq
         crKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795433166; x=1796037966;
        h=mime-version:content-transfer-encoding:content-type:references
         :in-reply-to:subject:cc:to:from:message-id:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Io7ujKNNt7SQhbgiNtNsmPHGRtWoUuLSgdS1AFaBjnc=;
        b=HQuW3J89yJfapD9TP+H30QaP6IWooIISlP15AfuUaFyaYbl3vaAB8LaACUWpoSajTh
         4dVZmAw8hR8p6d3PvrokQhMBbvno/GnVIaO6+cHYN7lvQJc3n8LVt60XjHgGNjgSWz8T
         rNFk7n3qEgaD4Nt5Pa4/e42+lyeItsVb0NjkYzVZhHf9kODOFxr9uJLmHe615NUoxOw0
         e6hhkB1lgScMP+sfARklmWDVaaMUskGBXwDH6XfL747/gLbzCdiXsF4kv5ihbHmBHrxS
         ZyYrS7/dKHjPNvEro7h5j3cZuydonxn2Xg1YvYssrtZg94EMMAMTYMV8R2XlpTZKSH7Y
         OFwA==
X-Forwarded-Encrypted: i=1; AL+hErFGHnYnUPVkwwkZq2/0KAmfe8bzO77DT+6WJHccAidplRXgHnODD2CCByu182+y4qgISt0VPIUXOnU=@lists.infradead.org
X-Gm-Message-State: APuU4Z8kiXrHC7tVNpAHmMbWBnxXNChmuuBvPcOiSsIXuETp3By4Tuyo
	qDjedYd61ocZ5ErQLatF4fA803HdwBSXFnVweLvBXeeI6CApsejWha+R
X-Gm-Gg: AZFdTZfFJ+HSjsnkY0ChV2yVR1qAaaosoLsy+t/CJxqlKJEpHe71GhIua2HFgXbG3fJ
	3KHytEvs4xgLddKVhHmf5N7IqgONSUkx0pj+yRU2mIloY6gfhdmevgUKhAiZ6SnnwBn1sGsqtrN
	YQcoxoEvRy9MKn7hz6a9qobgz9qpMEMRz2UQPIcbjuKLIuRdfF3zFx4GbdbzHt5rUhl2tPRJRA3
	+ACGygWKym7QnfvcPapWyROro04md5rVi9x3PooAzGSoMizct6D4U+KmvtqC6osa86Eh8AL3zCT
	rE61sXY1veOnWnimAbdB0Ga9RDaQoVC7e77xEzwnV6hG5/yLrItLD3wjZUkbDoLJSnVKeJZgwwx
	zDawc5Yg+flFwAeaSzHXAX5pUZqKZZ44Uf49Axu0ioHKBszhfc9EriZ1dqalIxBvF6kJbyOHVLI
	HE6OZ/QuTb3VeFnahATkC0qTSfL/Xxk+dqlcSP3H3SB5b4OQYTMIJ3E8E0QrM5Bm1zc+7LeY1Lo
	BHuIphGKKC3ctCZQimHe0B3cKK6QiPpc6sPdnoNkfi5N9dqW8BLOo7HFVjh0rovw374ydF6iAgY
	iKd1t1wS+U6gZoGbTEUDe6Xo4kXbBYSm8RA=
X-Received: by 2002:a17:90b:4c07:b0:3b4:f92:ade7 with SMTP id 98e67ed59e1d1-3b41cb20eb8mr10517519a91.52.1795433165943;
        Mon, 23 Nov 2026 03:26:05 -0800 (PST)
Received: from localhost ([2403:2c80:6::10a9])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3b41ad8e93asm17449770a91.11.2026.11.23.03.26.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Nov 2026 03:26:05 -0800 (PST)
Date: Mon, 23 Nov 2026 19:26:02 +0800
Message-ID: <f5c6f44bfb6040289653cdc079b1cb2a.codykang.hk@gmail.com>
From: Cody Kang <codykang.hk@gmail.com>
To: Maxime Ripard <mripard@kernel.org>
Cc: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Yixun Lan <dlan@kernel.org>, Troy Mitchell <troy.mitchell@linux.spacemit.com>,
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Haylen Chu <heylenay@4d2.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Brian Masney <bmasney+clk@redhat.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
 Yao Zi <me@ziyao.cc>,
 Uwe =?utf-8?q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>,
 Guodong Xu <docular.xu@gmail.com>, Icenowy Zheng <uwu@icenowy.me>,
 Jerome Brunet <jbrunet+clk@baylibre.com>,
 Sarah Emery <sarah.emery@canonical.com>, Ze Huang <ze.huang@oss.qualcomm.com>,
 Dmitry Baryshkov <lumag@kernel.org>, dri-devel@lists.freedesktop.org,
 linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH v3 10/17] drm/spacemit: add Saturn DPU KMS pipeline
In-Reply-To: <awPxPHpr4NYxqdmf@houat>
References: <20261121-k3-display-v3-0-ec419e8e96b8@gmail.com>
 <20261121-k3-display-v3-10-ec419e8e96b8@gmail.com> <awPxPHpr4NYxqdmf@houat>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_032609_230162_99874DC6 
X-CRM114-Status: UNSURE (   9.15  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-0.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Maxime,

On Mon, 23 Nov 2026 08:55:40 +0100, Maxime Ripard wrote:
> On Sat, Nov 21, 2026 at 03:40:49PM +0800, Cody Kang via B4 Relay wrote:
> > +static int spacemit_drm_master_bind(struct device *dev)
[...]
> > +	drm_mode_config_reset(drm);
>
> You need to use drm_mode_config_create_initial_state().

Thanks for the review. Will fix in v4.

Cody

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
