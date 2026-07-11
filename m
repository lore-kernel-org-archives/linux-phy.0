Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17242C43458
	for <linux-phy@archiver.kernel.org>; Sat, 11 Jul 2026 04:49:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N4XjxgFklehvCEpNB9ckom9N4AatZt+wG0d+bCbj7TE=; b=pqAu29oTUOQl5O
	VGT4LBNWx5bdKBG3bqcWYdIUMIGFjzuVVj2elnRagHDIaPlbAqPNqRm5zQcUkg44SVs3yesHGU4i/
	vNPHjad2Z6OqNp+LIgeZkqfZptgFUHemUaDkDXbwF7ex27cvajDFDj0SfuhKlrW+/b5zjBMWvaD6J
	+l4leqvXzWmvfq9tb1i75v2R6ixQaGRk7a0yEYx6zVr+sE5bQ/LVqq4xGg6jJV75or8NUHk16uFFU
	/eFCXHfnt/tndC8pXGClZuQM4TIX+8EhU8ds77apyq+QS8EhisUTf3xCePzyQsIR5B5l+yQaK3Xhg
	NcPGZl50dM/XcFedAVEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiPeo-00000006CwZ-0xem;
	Sat, 11 Jul 2026 04:49:42 +0000
Received: from mail-pf1-x430.google.com ([2607:f8b0:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiPel-00000006CvS-00YD
	for linux-phy@lists.infradead.org;
	Sat, 11 Jul 2026 04:49:40 +0000
Received: by mail-pf1-x430.google.com with SMTP id d2e1a72fcca58-84847f60deeso2319385b3a.0
        for <linux-phy@lists.infradead.org>; Fri, 10 Jul 2026 21:49:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783745377; x=1784350177; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=qesMdHKmyxw3NJ4a67qnIHpz73OEBeBHn6uWkzO1uyM=;
        b=ojy68frid4JlfDR2nn8rSAt92jT8B3cNedtXYQxUrDE6jAvZk//n62HcxOJ1U/5/mb
         Am0xFQ2rWf6ZmbUqScTaj1sQe8nO5CVaaPNilxSu26KVxUAVSV87+AFBRrvamLrxI7Fr
         NPW1P5/0Rb4utY8EOyO8mVWVn+p/AZO+/CoraGfwkIKSRBJHahguWjrwUrZu4rMVhU6u
         mtu8jXQ5k2TcJBCNP4QxIFI/XpOWgxl4Sc0KrK+VklYtLswiBGp2iR00IUNUfSXhyFCn
         qVVdaMVLqTR/p6smkCmy3VcQQmCaOREF6qDPNRpQH4rhoJ/YYbs14uDoy71n51H+jCvg
         0Zxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783745377; x=1784350177;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=qesMdHKmyxw3NJ4a67qnIHpz73OEBeBHn6uWkzO1uyM=;
        b=qxkFp2fV79sLWHGHTyVgLV6//VVhGJOh/wE378huUj+6VAL000cPzl6o/cv0dvMSP2
         p3qpSDOQ8t8hiX5CHXvPHHmYVk5d+0FTJ8MpMKgPTQuSi3N/51JDSbnQP2p/B2Yrmu9f
         qPLVY0VW775UEeDY9bq4xWf8jyLEQdA8gYrMXv7trSLBIL2OjhuQ+Eva38UTeB20zf2e
         fnLZPeJLKVSLWuzUq28BInTp5VRmz31zUDUllexCIr2iEgIpBART33E+HQWWTAHB9AEi
         PdXy3M3EbxiwiRR6Cx/4eQHMGXujaWCIO8fiE27pGgFVzZi9LUOyWQzFuju5SO+KsPTv
         xexw==
X-Forwarded-Encrypted: i=1; AHgh+RphUtIKp/5684u+KCJ80b2+/haCm1oz+zMjDuNh/3Tms46BARitoo+dx0QPpOYP6jk24F+vtNnFcOs=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx90xzWkTCLhy5SPppLr5sOC213IR8ntSrZZXX4PIi5B7cw0AZI
	DnINzi2aX/ZE97QSAV19AX7VuujI6TRcus49BQHboETy3OlS22StV+ew
X-Gm-Gg: AfdE7ckxe7x4o4/fB6Hl79ACuLJ56yKsV00NbnBrosAYvNAekBD3lDydXvs5f6Ui8oo
	bi8pJde310ycXAILJyceTQtqNWf/DH7+nAR++wdQG7x5n3kEwPSZp6axUtI7nlQgVfFavQJ14JJ
	psltSQ3nKCYFYJKwLjlBFvZKmq7H/AZGe7DUmf4q2tgOZ2Hr82jz2fMFDG3pf5QOXT1jU6l8Lkk
	lb6rYZLrV4TRlCoO1DoqiztH7fZitEhj7y7uwnKsfYsTg3vfkNZwJnejuSpKUhNNb31d3vY6pFJ
	MuxZAMBr6RU3Cyg+npFN1j5imPdvc6n9K7ljbW/HZZgG3jYjLT0wt+5sN2jSjpVQk1cW2XD8FiA
	w/9j9xOdTnllyUV1QaRlExhDxS8iBGe6cbSmx9X9wb73nceFMl9w00ptxGbIYKZl4ZOVz39JdOQ
	3XLmnCbVDK50/yE2qq+kOO0AHRqe5JhtcTZSrJwPoQkgPWM84hIg7lwg==
X-Received: by 2002:a05:6a20:734f:b0:3bf:6763:f0d0 with SMTP id adf61e73a8af0-3c0f085657fmr7458822637.4.1783745377459;
        Fri, 10 Jul 2026 21:49:37 -0700 (PDT)
Received: from google.com ([2a00:79e0:2ebe:8:d42f:71b6:335c:aceb])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-311a6115e61sm25970082eec.22.2026.07.10.21.49.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jul 2026 21:49:36 -0700 (PDT)
Date: Fri, 10 Jul 2026 21:49:31 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Arnd Bergmann <arnd@kernel.org>
Cc: linux-gpio@vger.kernel.org, Linus Walleij <linusw@kernel.org>, 
	Bartosz Golaszewski <brgl@kernel.org>, Arnd Bergmann <arnd@arndb.de>, Andrew Lunn <andrew@lunn.ch>, 
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, Gregory Clement <gregory.clement@bootlin.com>, 
	Frank Li <Frank.Li@nxp.com>, Robert Jarzmik <robert.jarzmik@free.fr>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Greg Ungerer <gerg@linux-m68k.org>, 
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Hauke Mehrtens <hauke@hauke-m.de>, 
	=?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>, Yoshinori Sato <ysato@users.sourceforge.jp>, 
	John Paul Adrian Glaubitz <glaubitz@physik.fu-berlin.de>, Dominik Brodowski <linux@dominikbrodowski.net>, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, patches@opensource.cirrus.com, linux-m68k@lists.linux-m68k.org, 
	linux-mips@vger.kernel.org, linux-sh@vger.kernel.org, linux-input@vger.kernel.org, 
	linux-sunxi@lists.linux.dev, linux-phy@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-sound@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Subject: Re: [PATCH v2 09/10] Input: matrix_keyboard - replace linux/gpio.h
 inclusion
Message-ID: <alHLK4O77khiKwtW@google.com>
References: <20260710211954.1373336-1-arnd@kernel.org>
 <20260710211954.1373336-10-arnd@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260710211954.1373336-10-arnd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260710_214939_047702_0D660F87 
X-CRM114-Status: UNSURE (   8.76  )
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

On Fri, Jul 10, 2026 at 11:19:54PM +0200, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> linux/gpio.h is going away, so remove that since the driver already
> includes linux/gpio/consumer.h.
> 
> Acked-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Adjusted the subject (s/replace/remove) and applied, thank you.

Thanks.

-- 
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
