Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38E60CCA462
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 10:06:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IhsdeZo3zJQ3W/iBL13Z/kJPE0U9fBJJUhYfxh80DFk=; b=ZLQuE02woOUtfJ
	awqAPIU1pqgZKh+t+37e3nV+xMhU0bPp4Zxt+7nYCN6j5xMGrq1VsFDuuasqz4nui7cEWR9AqOgQ3
	7YixzvRLFDIXlV/MgulONcIjzGGDd/aYpI4FJOWvQaAct+9XbZKpvd3Fgs5YND+4V6lUoMNaNTiUM
	S/qYTseVqu36eoMFopkNKn63k6SH/ssSbnIP0MtkJOq85dvmiN3Amu/ZUCn1wjUYQC6V05dGrsPx6
	RwABRaNxWR6vB2Jw/d+Ky96/HdoW8NKayjF9SUNOTshXLlamPIh2IhC2Kfu+loKceB0PPRy5HeN8a
	xCIdedLjPoekG6+4HS4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHepZ-00000002ZSv-3sNn;
	Fri, 16 Oct 2026 10:06:29 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHepX-00000002ZS4-3TuM
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 10:06:28 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-4a022fee0caso58626295e9.1
        for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 03:06:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792145186; x=1792749986; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Dzo/ODszSYxTk3F2wSXg0f3yesaVb/VOhamsMvYKREc=;
        b=lsV7CA2Za6B91JJvjbgJCWLd1IYS9E05wJEKr3FH09I0+rpL0cfquJfaiPrLfxEkPX
         lttDu6ymjXh2M3tPOKvDDIyMJZwWVT/LO1MoKI0AqeZAOmQDKN2+McL6lpJW6ptsSEB3
         oHMc2FCEz8U/cjIhhwqK4TRgkLXgcgQUrzS1RRxl+jgB7Xn2JiWAR9ee2P6D1D2pf2zh
         H2mTvfGojSIn9yHk3n/eRy3ZL3qHT7bSSnTpQ0LTWQsPG0rnFoVUAKaDcaJEiXJ9NlDZ
         SEGRD8ePa1YOHsxvFw++ifTvhNMIOHRhDcv1cetuwUmah4lYt0wPSQ+9tbamZrBaqEmD
         wZwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792145186; x=1792749986;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=Dzo/ODszSYxTk3F2wSXg0f3yesaVb/VOhamsMvYKREc=;
        b=z/daDbp2VaWMnQKKRzlRP2/27xV5+mDgpQ6L9AYcm32j8hqOh5EQmIT4o9Xk7lcy9z
         9HsNTTSQt5H9+hqT5ZGZcSsp5ds+iy4Uilm34TGBL9LLQmnvVbdBBhtiVHT4gkGfwzKM
         k28iVdvWW5PNmKkEOTSpnVB2jL4GfPAxx+AdcgB8NPYXYE/SE4oyljtXYQJo2xeJmVI5
         2zBaTx5fDXv3bzloeYhsnvzAbaKajkfOWYEj06GGjCQCXXkLE4eZPsXNMdQojkqzDaxa
         szL0mLbiYVHRVqzxH3aeJyeEjSdwJRrU2lmD5xhrw2kSXG1k0f2ceqq3akB8anVBLk0Y
         VVfQ==
X-Forwarded-Encrypted: i=1; AKwUvBxAxZDtN/fTiY46AKXnhooH7EkaLeLQ/fg5iN8op8NtYkZ9CgtwY0qnss8Tc5P4nm1AlUZMYS5/Q8s=@lists.infradead.org
X-Gm-Message-State: AFq9FYLsjMS6+ap8HcJbpQ2zhbXCeHODOy9KrtJyVFAWrFh5XFBEMiBU
	pcpJqXxcModd4h9SD3N0wHucEVWPciUqwmeACzDBYHP0I9q+CiO1Iqykl+Dc3j+8
X-Gm-Gg: AYBFou2wULGJ/N5UMCcj0iO65s5HCu5oAS8fHm3tqYDR2wnKJGhODGjZwSNbMJZdCOZ
	5I1IRV3vY8xkJUpQadyYKz36QjxXMR5tZ+sCDC0mQnybeKheKzOyG4+S1mrn7f+up+5bHvWDjAu
	aRcq1UUtmMnSkLbLe3+V7zMRtT1q/ELZ+duqK4sFmNWWNwwDjxVrsZZILgiw98wDZFLYEzlZxzT
	bA24NGDpWEbtdiCG3Risr++2jrlDSBSVq3E8BAWjk9kmdqz8hPpH0X58BLrXdebDogbATCr77MN
	7jxGFxyKxYuJ385e/uY7nXoTEw8Do6LwQc0bPV/+ZnAjJ0OVtdxDYofzAr14S3/71vFB5kFxpf2
	vbZmTmnyOQunDCExnYoHJ3wTLzXzjFNVZ5803cmzJnJkv94sCbT1zoolx6UjSfTv2XwByoVo0m+
	fpESXwiVqU3YQEODAigc9FM+B48AJfAU3UTEhZzkiVvde81ALywmNJzhvmav8g05oqGmOwjaIwQ
	9Sa2HBlNQYMWaAk1BuwHLDsOsJhIwG+CTgJj3AsuMFURhYrLBPhvZv1BCz4Y4b4IGyBDT1o
X-Received: by 2002:a05:600c:1d11:b0:4a1:d307:b52a with SMTP id 5b1f17b1804b1-4a1d307b62fmr7356695e9.19.1792145185802;
        Fri, 16 Oct 2026 03:06:25 -0700 (PDT)
Received: from SP11X1e.cable.virginm.net (cpc99340-croy26-2-0-cust244.19-2.cable.virginm.net. [80.193.62.245])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48dfd471a64sm4404889f8f.6.2026.10.16.03.06.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Oct 2026 03:06:25 -0700 (PDT)
From: George Neacsu <geocausa@gmail.com>
To: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
Cc: Bryan O'Donoghue <bod@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	David Heidelberg <david@ixit.cz>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
	Loic Poulain <loic.poulain@oss.qualcomm.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	linux-phy@lists.infradead.org,
	linux-media@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
	Suresh Vankadara <svankada@qti.qualcomm.com>,
	tjose@qti.qualcomm.com
Subject: Re: [PATCH RFC 2/4] phy: qcom-mipi-csi2: Add C-PHY support for X1E80100
Date: Fri, 16 Oct 2026 11:06:23 +0100
Message-ID: <20261016100623.427688-1-geocausa@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <bd13910e-ddcd-45a5-a7ce-7e6e74290955@oss.qualcomm.com>
References: <20261015-x1e-cphy-rfc-v1-0-1f3fa9af940a@gmail.com> <20261015-x1e-cphy-rfc-v1-2-1f3fa9af940a@gmail.com> <bd13910e-ddcd-45a5-a7ce-7e6e74290955@oss.qualcomm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_030627_884091_5A3F3FC7 
X-CRM114-Status: GOOD (  19.87  )
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

Hi Nihal,

On 16/10/2026 15:29, Nihal Kumar Gupta wrote:
> Thanks for working on this. I also have local C-PHY enablement patches, so it
> is good to see this being discussed upstream.

Thanks for the review. If your patches cover more SoCs or data rates, I am
happy to fold them in or to rebase on top of them, whichever is easier for
you. I can test anything on the Surface Pro 11 (X1E80100, IMX681 on
CSIPHY2, one trio).

> Could we add blank lines between the repeated per-trio register blocks here?

Yes, will do in v2.

>> +	{.reg_addr = 0x1000, .reg_data = 0x0e, .delay_us = 3048,
> Any specific reason for this much delay?

It is copied from the downstream reset exit entry,
{0x1000, 0x0E, 0xBE8, CSIPHY_3PH_REGS}, and I have not tried anything
shorter. If you know the real requirement I will use it. Either way, a
delay this long should be a sleep rather than udelay(), which v2 will fix.

> For this C-PHY table, I do not see a CSIPHY_SETTLE_CNT_LOWER_BYTE entry.
> Is the settle timing already encoded in one of the fixed register values in
> lane_regs_x1e80100_cphy[]?

Yes: 0x020c/0x0208 per trio (0x060c/0x0608, 0x0a0c/0x0a08 for the other
two) are the settle count low and high bytes. Downstream marks them
CSIPHY_SETTLE_CNT_LOWER_BYTE/HIGHER_BYTE and overwrites them with the
count derived from the sensor settle time. The RFC writes the table's
default, 0x22/0x00, as fixed values. That works for the IMX681 at
2.4 Gsym/s, but you are right that it is rate dependent. In v2 these
entries will use the settle count parameter types and the count will be
computed from the symbol rate, as for D-PHY.

> Could we avoid carrying a separate parsed `bus_type` and derive the PHY type
> from the PHY layer state instead?

Agreed. The bus type is still needed at parse time for the lane count and
polarity checks, but the runtime paths will use phy_mode.

> The C-PHY and D-PHY lane-mask calculation could be combined into a helper to
> avoid open-coding the C-PHY path separately.

Thanks, I will take your helper. Together with Bryan's request, this also
removes the goto.

> This gives us a single C-PHY register sequence for the SoC. Do we expect this
> to be enough long term?

Not long term, no. I only have one C-PHY sensor running at one rate, so I
would prefer to keep v2 to the single table with the settle count fixed,
and add selection by symbol rate as a follow-up, unless Bryan would rather
have the structure in place now.

Thanks,
George

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
