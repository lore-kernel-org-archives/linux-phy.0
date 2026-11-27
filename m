Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19283606A31E
	for <linux-phy@archiver.kernel.org>; Fri, 27 Nov 2026 08:38:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=dOBUdSH0;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=zdWH8EXM
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=nwOT06nx6Ek0/6ZrPEYiCAqo+2LsjTMNPEwG2G/+5xc=; b=dOBUdSH0BKkLEOtJgbATFmFNfH
	zdWW3viEsrEbETfHwowRcvy0oupaKNmn48abkDvzaXwZueuj1EW7a/C7616jYMKirEzjW+wRvzOGo
	thPL3h7fnyPiecwFna/ht1zReu/dziYLJBSTOHvTkz1cQ7EdRXrbdGmKmLucPyXB+c4PCSvqvglD6
	FKFiwReqc3wxJm/kYPbpRQOZVamlQR3ZCQ531nOELBB1rVLSYS7nrCHck5uJaE5L0dBH/4SitSHmX
	tco1uhwqZet4hlV15vQUJsE0F+AW2GUfY1nLLpfQO7PhW5NbfE7mA/oauwbZeK53+etgAUF5dM+HV
	ELBQszUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWrT5-0000000FHT9-3aly;
	Fri, 27 Nov 2026 08:38:07 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWrT2-0000000FHSX-47vo
	for linux-phy@lists.infradead.org;
	Fri, 27 Nov 2026 08:38:06 +0000
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-6bab1084463so977731a12.2
        for <linux-phy@lists.infradead.org>; Fri, 27 Nov 2026 00:38:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1795768683; cv=none;
        d=google.com; s=arc-20260327;
        b=kNEEUPR4227dv+/H3QPrwg32h9NRlDciFvKZ33pFMs/cIUl85cY0tGj63o6yynKmeH
         xmgf1hJ/nG4cXZYu0quLP9bsXQQUydDisMuOK/8IzfgKW5RNm8XRqcl0UTVSITMbG0Rz
         ahn3ou96oXIeezS8SKOCguTSIZYiTs+YUaT95fzVwWK1VlTKeozYz8qAYq845/NsBk9r
         Sj6hYr6ej0qCEt/8/IQFTIDQ8R5McqU7EzWL5eZ4kOAEaARHj2fOmpiLjOd4XAU/bWxV
         x9Brc0W8xQXmxP2Lfrya9RCxfqHadSZWsoaqG4DF4aOFLZxeLngpxDt/1RbsL0SOuyzQ
         A5qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=+iLLY2LNcOA15ZEBBxvXXqmssEEMm1Qui3OR6b1WQp4=;
        fh=JqFMAEs2tdcP9FnU0Fo1YfGBktg5tpfx+cmVBNV6aoY=;
        b=MUNTGJ4nclTW0VSGfa5Ab6Un8NKXEYuaiXHR2sIf4fK/kMfDm0dsJawYqS3xmCGyBP
         pa0PxYV17KPSubBW5vTFK5oE3v+QPIvLzN5n/i9AndqUmt9grO5IWBnNB2IYo670GkYK
         hdMazbiErNBx03XSkqoRcIHEJ/0RHAGo+miSE+/FywoYoM3JSG7MoLkUMEtM7+yYZXzQ
         dJ3Ls1+MyKxQ2+eBRxpnxFXXq92jE3ot2xTcadXTl7gRCNSVo/cjhjO9QcX6vz18drMY
         KKWxksa9dAb50y2N9I9uyuBEuOiwrOQDjTCPSmD7m7jdCh0dto6Wq8w3b0uiMz9JRjZf
         ozZw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795768683; x=1796373483; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=+iLLY2LNcOA15ZEBBxvXXqmssEEMm1Qui3OR6b1WQp4=;
        b=zdWH8EXMtaYTJuR4JBOFXNjpwFBfO9DgFFvzJLYQHin1iUoMygyfhco5xxgGLnH3XP
         cxT8PzyiZTT+vMA9P4tRiGcTrIAK50ImTRPzAutUZ+gezh9UCCr4YNjWkYki4/B78Yrb
         aIouus+8VALnXg85vGVql2OmGnPD3HJ/xuJG282BY/iSGY/AfeWPmfwNu0gflI6kRSof
         IsfPqvQKudmRcq4gvyIsnRdsrO3CvmLyuQLWfH1HQ9JiG2vyC+GN5lw2H/SK8cRzrPKW
         /WRHFdNRJsKsy+++Je5K7Iz+RA4/nFPG6iEUW9QzsF7XKzTWQyqkE++gm5xCuiAJbrkx
         XFsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795768683; x=1796373483;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=+iLLY2LNcOA15ZEBBxvXXqmssEEMm1Qui3OR6b1WQp4=;
        b=rPHcY7T1Ug9iDlRK3urRV1GLWtvrIU5uBaVjfKFt0yyoeE/qvJEI+1AmjJ9ylFOxwB
         nCjfXA6eBkfF3TYn33DeDI8GgaInsufs2oVmbTWK46nCG07JDgLwc0WrMUqmFszgvAJe
         yoBpE3syTyomBFWHO5Y4PBtZpsCb9jOfTA8oFRsypQvgdgUvLOGaKgmtgfFqK5aPiWKt
         5TMiEQaoQvkO8yuxapw6bjwjtpsAdjtvvVS9tkNU5A96p1SxdCeAXrF94TwrLq9JvqHd
         mDM5M/wj5MEx/saMfOC1kObIhpiuRmCPTu75JtrZLoMhliMQElC/YSXTuOwGyGHec8z2
         kKsQ==
X-Gm-Message-State: APuU4Z/oCo3DcIQ/W9aiafdvAYRiAd2qWZfuhGGEg6D0VJx2YCcBHlK/
	DQ0zVM4862f+aQZqJQqgxlpUetBCRVZZYCcxeJ7esxEGC/UX3sC6Qy0gIiQPLW2YiOcwykSwkti
	s8/GLfNIebqfHq6Gh09FAj9XgZYiBuY0=
X-Gm-Gg: AZFdTZcZLerSSvpeTmUGGeK3tZJm1mYzVAh4Ixvf+DcgZvkmsLebkpyHbPBeZWtXXa+
	CuTgka6LpKjj7JmQ8uVgIrQlIWZBzST9/go1bAoUrqVcsUn0fsEamzeItnsJIEebLXaT7wxRwvj
	cmOms7qZVwJeo0zmezFwfHKVYze9oDbk9NMGM4L2x9A1PVHtU79sI6gK9Ukfi+fiAKGCFb6MKOL
	4wVmJEDmkKTKJRaobjHVzszqbW9G/Xm5IYSiEpJqgqJeySJOvQ+ooQPHiH1zLz3tkWEro+YFAYa
	W0VXsQLPqaDLsggjt0v+YkP8VuguZp9bk/Q+Mr2ANFi1QqcYiSE5nGJxCrgl1fhVp+/uJlcX9dH
	UeCBWaAq0eo+dnQNb6KuSqr/NFxGqMpmD3t+pk4OQR7bw+IvvrSLn68rW5tD7sSk3pxIx3Ew=
X-Received: by 2002:a05:6402:c887:b0:6bb:2a8b:5b2e with SMTP id
 4fb4d7f45d1cf-6bb2a8b5f9dmr6168346a12.1.1795768682451; Fri, 27 Nov 2026
 00:38:02 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261127-dcphy-rx-v1-v8-0-9ddfef99221d@gmail.com>
 <20261127-dcphy-rx-v1-v8-3-9ddfef99221d@gmail.com> <sashiko-outbox-236841@kernel.org>
In-Reply-To: <sashiko-outbox-236841@kernel.org>
From: =?UTF-8?B?5qWK5pm65oiQ?= <jason98166@gmail.com>
Date: Fri, 27 Nov 2026 16:37:50 +0800
X-Gm-Features: Aa3M54pu6EO4cdX8RMwrWdtxfoQsdpmDJZ6iQ0uh3wib5NqKabP07P6_hR9dYhg
Message-ID: <CAPwA33Jfp_ybG7gG_PfZoS_7=g3_Fv0w2B9J3xxWsJM7hK-3Ug@mail.gmail.com>
Subject: Re: [PATCH v8 3/9] phy: rockchip-samsung-dcphy: Unwind power-on on
 PLL lock failure
To: sashiko-reviews@lists.linux.dev
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, robh@kernel.org, 
	conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, 
	olteanv@gmail.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261127_003805_027851_AAE0FE97 
X-CRM114-Status: UNSURE (   6.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
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

> This fixes the incomplete error unwind in samsung_mipi_dphy_power_on().
> Should it include a Fixes tag:
>
>   Fixes: b2a1a2ae7818 ("phy: rockchip: Add Samsung MIPI D-/C-PHY driver")

Before this series, the APB reset at the start of the next power_on
cleans up after a PLL lock timeout, so this fixes nothing in older
kernels.

Best regards,
Jason

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
