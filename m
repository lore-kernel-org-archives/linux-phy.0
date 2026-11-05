Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AAA8606A326
	for <linux-phy@archiver.kernel.org>; Thu,  5 Nov 2026 21:10:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=sK0dB3ym
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=+pybQX4KsvsignDDYTNkcl9rsHbQUGC+Nz5JvQmyU/Y=; b=sK0dB3ymFkcko3OIdLO3j2PLh6
	j49HmJM2fjlCfwAtSRxQ2PGaFwfH/FbnPakYIX5BYzX0t45ujtEAEtlmIoURGpNkl34AWBh5RDbUI
	n2A/4uuziQ+AHTaUEMfMt2uYH5nMdude6NdUjLRsM5OP/SzxGAi07x6j6knySbSexzirumHn5TfUr
	sHf5FrjYwAqdg+Du8zdBPEZQyaNUSyU/+qPqjk1V1Rxi7LKxmOHvGpD6QZc2/BzWqgCIGBgCjIKq8
	zkr8DQLZyM4y/puUoYdSoWekr7SNSXyrxxwUNtAF1IcXfDcE8b9sAK49Z3x93P+EpWqFUjX2u1L2c
	+nAr92KA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xP4jX-0000000AhEr-1W3U;
	Thu, 05 Nov 2026 21:10:55 +0000
Received: from mail-pj1-f46.google.com ([209.85.216.46])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xP4jU-0000000AhDv-2K1c
	for linux-phy@lists.infradead.org;
	Thu, 05 Nov 2026 21:10:53 +0000
Received: by mail-pj1-f46.google.com with SMTP id 98e67ed59e1d1-3ae1d0caaedso1220076a91.2
        for <linux-phy@lists.infradead.org>; Thu, 05 Nov 2026 13:10:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793913052; x=1794517852;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=nAEj2+zGM/3XkCWGNMk+ECxEPs91EtFhdr4yuDuoVFo=;
        b=RhIG2bRElrNoCj5y9v7oDBlTevpREc8cwt0BPF2E8V4O7BXzM5FJdLAAcDLbDFhtyG
         IyNCnF0SKPm/crpEb26t09cl0SjuZBtzBI8zOpM2+mz0eAIGMoHUKrUyOi02lj8rAEnO
         wQ0tdBLbKp5AXXUjpO0ejQEsD2FaW1fiJSUz5t7/5goTMO9P2Ai1J9wdiz7U4HHs22AM
         yU0gJAVDhlwxT/U/IPM/yDKCXLK6D+GAS3VdPpOyEjD53RRB3OMFu4lnwPqWqcpRQBGs
         BY4gxIu3iBG3w9G25Nnz0Snsq3WnPhcs2qo9X+Luawff5OtFcJXjxc33Cew4ecpfHdnD
         B8ug==
X-Gm-Message-State: APuU4Z+r52g7CabZYf+j49+L9LSjecyp4n4QmN5iSK8dYXYPbVudCUpd
	5e8FMBASWynsQWzsrzFUH5yvyg6cMIarFSJ6Ql1iXjCbwFZ32jwS1xPuSroInTzBjLo=
X-Gm-Gg: AYBFou3c5QQTK7lteFcPXW2LTLkJNpBQEnZIhZAGjuiIVof+P0OC0Q8IccwV6dRjioi
	PCkIJpdBnPxO3fwR6oZ2Sg+7q7MSAhcmpYGui1CmtVv+bGREiDzmrmAdpiPJzNa6J6LAOdppRGH
	rmb/wdfPtz9lbeQZBJiyVv9qb+cYhODsjPWouGWHuhMzZXB71QSLQXiFcOzbGyuT3l8RMxNDKrl
	YKfoGbRc4OrmGIhjeAVZeKuLZld8Y+jTYNVmpanj46LOhv+HY3leBsd0ohmoK5FbxhD5kuwVg4s
	LFsu532AayH3BsyCArSdMWAjP+6Y9aya63sTdqPJX+J6xZNH/4TfWKiQunv8uHAgv4wQgfYOuok
	INqlJXCAkNvTJh/+8l4Ktcqzre9xxemPlMb+wHjkrPF/Tw0EvhRVJXtz1Wh8z623E/TsLw3kio1
	yXg/Ii8OdOuyqhhYQx0Fu1htTlqpPLuE8BfTwx2dFWZH7cnjbXOEjDBANCynhMNImv7cXuB684o
	jLhZoa2me8OickBIEtljCAklKs+mc2+4Lhg7m7nlnrW5kCRXvr43CPy1pZyc4kiWqT6qdjs09aI
	C8fjqLM+kRPxv4+iir5ipZlrOZgCd9WvwUaMDd9wCxGNm1sH5lKQztP+PgdBLBEe+evhk/rnZLy
	3P3DhvWM4iGqM9cCRWWaQoM4GwLool6EVJj9ksXxvE9A=
X-Received: by 2002:a17:90b:3dc3:b0:3ac:7c52:fb04 with SMTP id 98e67ed59e1d1-3b0db71895cmr224143a91.44.1793913051560;
        Thu, 05 Nov 2026 13:10:51 -0800 (PST)
Received: from mail-dy1-f181.google.com (mail-dy1-f181.google.com. [74.125.82.181])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3b0b313c0dcsm5186129a91.1.2026.11.05.13.10.51
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Nov 2026 13:10:51 -0800 (PST)
Received: by mail-dy1-f181.google.com with SMTP id 5a478bee46e88-35b2c599f43so111577eec.0
        for <linux-phy@lists.infradead.org>; Thu, 05 Nov 2026 13:10:51 -0800 (PST)
X-Received: by 2002:a05:7301:4e44:b0:366:dbf9:32bd with SMTP id
 5a478bee46e88-36f76023af6mr403193eec.9.1793913050522; Thu, 05 Nov 2026
 13:10:50 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261104-sf19a2890-usb-phy-v1-0-db0cad937614@telaak.dev>
 <20261104-sf19a2890-usb-phy-v1-2-db0cad937614@telaak.dev> <sashiko-outbox-199396@kernel.org>
In-Reply-To: <sashiko-outbox-199396@kernel.org>
From: Joseph Telaak <joseph@telaak.dev>
Date: Thu, 5 Nov 2026 16:10:39 -0500
X-Gmail-Original-Message-ID: <CAPY4CJ6OG5B43AVKOVm5k4HurTB1u4hJQGgLyvgGfm6yY56+0Q@mail.gmail.com>
X-Gm-Features: AclHuK-pj-xm9X9wgWQkxGyGq4DurFvYioljAxStC8zAaFVSdtHpwpbzJ0LRFrI
Message-ID: <CAPY4CJ6OG5B43AVKOVm5k4HurTB1u4hJQGgLyvgGfm6yY56+0Q@mail.gmail.com>
Subject: Re: [PATCH 2/2] phy: siflower: Add SF19A2890 USB 2.0 PHY driver
To: sashiko-reviews@lists.linux.dev
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, robh@kernel.org, 
	conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, 
	olteanv@gmail.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261105_131052_593430_BA8462E7 
X-CRM114-Status: UNSURE (   5.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.4 (-)
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
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

> Should this depend on MIPS || COMPILE_TEST (or MIPS_GENERIC_KERNEL) until
> the platform Kconfig symbol is introduced?

It comes from the SoC series, which goes through the MIPS tree:
https://patch.msgid.link/20261104-sf19a2890-mips-v1-0-eae80820af68@telaak.dev
Until that lands, the driver builds with COMPILE_TEST.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
