Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03956C67861
	for <linux-phy@archiver.kernel.org>; Fri,  5 Apr 2024 07:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4vGsP/28yoHeL5OnvrekchANwMp7jmHtcWwC6taNNnU=; b=OQjh5itJYFj51d
	inlqyU1l69fZ1hJBzNK8UkF3BzUK28sK9tPgNh5AF4lWPwk5yNIPhaqr1JfZz5H662zPqTmV4CKJy
	uHu8kQe/xcU+7dcX8vivAjSkaxzPpFX4JftLPazIFTc3futF75cJFl3aFWo4cA9uDJ0eMBA/DInyb
	m5GLYqklQ6hiKp8EgMTviIAkbYC6JgBT/64guoH4Rck/XqB2bu2Dk79jpjWOQO7z2h2UVL2MDfkmX
	s8y6khrhJ94EdGMGg26QBxxzy2I1vnaaF1h/XS0errRqg7Q2qa/l4i2dojiVNTElB8aQZ3BCC9tY5
	QaTPaU3v6KY8H8G1soyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsdv0-00000005eL5-2q33;
	Fri, 05 Apr 2024 07:23:22 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsdux-00000005eIw-1GsV
	for linux-phy@lists.infradead.org;
	Fri, 05 Apr 2024 07:23:20 +0000
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-343eb6cc46bso110123f8f.2
        for <linux-phy@lists.infradead.org>; Fri, 05 Apr 2024 00:23:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712301798; x=1712906598; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Swy2Ymmin5bn1S0K0/BIJr14PVb2mCYW4gABHjS10eE=;
        b=wG+WkdfQEGnzPxqwop5FMOSsy9jWlbgi8payey9kE3GbRAYIH6UkYlV984S4trpU9m
         nXCTaU7nfAspugjhqawlxXUwkkk6RBOdZCP1TCPJMsyEMah9LgXuXDB+a+aKLo1Ecxjo
         QBCdMSOOQYQXs1WTCEeCqntA9PEfNRG/9OBmrUCRfjYxfr/lLREkzGKtktslwA5Sg1n9
         6qrcC5/2ADWbDFxzZAz9kOrJk4M1NtvY0EXZcv4Bw1b+VbJHwP1AznsPK43bFNv3UGFa
         pMyuKvdIn8Xu7qHQ9ZLXKf0GbX/m3N7R6jpPBdG+HFQvztP3RVCZuJ0PZmxhDZeuAf4T
         3JQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712301798; x=1712906598;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Swy2Ymmin5bn1S0K0/BIJr14PVb2mCYW4gABHjS10eE=;
        b=QX+BbsMMZMhm/5ETAolkEJ1jTVa61oam8vTZ87Qr3lzXQRIaol34LFF89QTWooiR8y
         eYZ8UsPaDJb//LTknsqiKOmL31Ky3JCirSxIsWgKAiOeWLAa3sY1ewzEYzp2dVFompKE
         Qxok9ZfYnbeA2LmhscA307+CoT3jS3XgLzyJoJX1KaWkDrZa3VeMSbTRq1hqzxqMvghX
         pFUvJHJ2hTxbMcJzjsbdnvPTcIkvLIWkvhYz4768Oeqb/EjFlCcy3R7vSviJECGj3qVf
         vq62gMf+ZgDlrket2zwBbMyEO77QltuFMkOkPzgV7YmSAiokZIT4uIxaMBF7BAEBG42R
         mWnQ==
X-Forwarded-Encrypted: i=1; AJvYcCXE1C3biId25lh3HyudK1lq/s3VXkSUPZ46yNDxE3CT6ce1cPyuYKmyWBmmwJUY+wuvS5PkNvEOLu3nxRvMsMtzjGtmgRy9/hgixj+M3w==
X-Gm-Message-State: AOJu0YwUtaQNQK109wBE5GVp+IOA0WgyedsDkQO7XmZIGNBB0Y2FJzc5
	+JtaUhiEPJMjsval5l0jf2eNYQ05tEG3ZGzT1qwtYP7NK1DrusM7b0YtTWlR2OE=
X-Google-Smtp-Source: AGHT+IGFYhmbZFEXBcvSW4oTAKx1TZq9kP46lHeI8Ljnkc838zmC3DM9SJlHsNvNEbhOX4B03Xxclg==
X-Received: by 2002:a5d:5918:0:b0:343:6f88:5de with SMTP id v24-20020a5d5918000000b003436f8805demr424276wrd.44.1712301797816;
        Fri, 05 Apr 2024 00:23:17 -0700 (PDT)
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id r24-20020adfb1d8000000b00341b451a31asm1312626wra.36.2024.04.05.00.23.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Apr 2024 00:23:17 -0700 (PDT)
Message-ID: <132435ffc0eebed9317b346e880c4a69f09d6839.camel@linaro.org>
Subject: Re: [PATCH 08/17] clk: samsung: gs101: add support for cmu_hsi2
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, mturquette@baylibre.com, 
 sboyd@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
  vkoul@kernel.org, kishon@kernel.org, alim.akhtar@samsung.com,
 avri.altman@wdc.com,  bvanassche@acm.org, s.nawrocki@samsung.com,
 cw00.choi@samsung.com,  jejb@linux.ibm.com, martin.petersen@oracle.com,
 chanho61.park@samsung.com,  ebiggers@kernel.org
Cc: linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, tudor.ambarus@linaro.org, 
	saravanak@google.com, willmcvicker@google.com
Date: Fri, 05 Apr 2024 08:23:16 +0100
In-Reply-To: <20240404122559.898930-9-peter.griffin@linaro.org>
References: <20240404122559.898930-1-peter.griffin@linaro.org>
	 <20240404122559.898930-9-peter.griffin@linaro.org>
User-Agent: Evolution 3.50.3-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240405_002319_367608_517BA67E 
X-CRM114-Status: UNSURE (   8.56  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

SGkgUGV0ZSwKCk9uIFRodSwgMjAyNC0wNC0wNCBhdCAxMzoyNSArMDEwMCwgUGV0ZXIgR3JpZmZp
biB3cm90ZToKPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kdC1iaW5kaW5ncy9jbG9jay9nb29nbGUs
Z3MxMDEuaCBiL2luY2x1ZGUvZHQtYmluZGluZ3MvY2xvY2svZ29vZ2xlLGdzMTAxLmgKPiBpbmRl
eCAzZGFjMzU3Nzc4OGEuLmFjMjM5Y2U2ODIxYiAxMDA2NDQKPiAtLS0gYS9pbmNsdWRlL2R0LWJp
bmRpbmdzL2Nsb2NrL2dvb2dsZSxnczEwMS5oCj4gKysrIGIvaW5jbHVkZS9kdC1iaW5kaW5ncy9j
bG9jay9nb29nbGUsZ3MxMDEuaAo+IEBAIC01MTgsNCArNTE4LDY3IEBACj4gwqAjZGVmaW5lIENM
S19HT1VUX1BFUklDMV9DTEtfUEVSSUMxX1VTSTlfVVNJX0NMSwkJNDUKPiDCoCNkZWZpbmUgQ0xL
X0dPVVRfUEVSSUMxX1NZU1JFR19QRVJJQzFfUENMSwkJNDYKPiDCoAo+ICsvKiBDTVVfSFNJMiAq
LwoKWW91IG5lZWQgdG8gYWRkIHRoZXNlIGRlZmluZXMgYXMgcGFydCBvZiB0aGUgcGF0Y2ggdGhh
dCBpcyB1cGRhdGluZyB0aGUKYmluZGluZyAocGF0Y2ggMSB0aGlzIHNlcmllcykuCgpDaGVlcnMs
CkFuZHJlJwoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXBoeQo=
