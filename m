Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74D59CCF2C4
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 21:48:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eiHvtCGx5UyOJSR+8ObESbvm4Rg6CrB1zVc/RVdHFlQ=; b=MRknw3fPCuF9Fq
	YJmGs8tm2dqH5bDonXhdzcyZSyefYHa7ntn0kLLpp9e96vlCdhUyuAPpQNEsXLANXP+L5d1Md0sbe
	gYlfcLT4tJ4W8P0wCiI01QcpCMD07wTDjqq27s1o2tZktT4eceOM06brz7SAy85yGO8thNrG2b+Ww
	FXGzIts544ucbDXuElPS6OboRI2Yi467rM3Ta/3wkO87en8TDlZ/5v1UA92iCvcqc652Tc8mCd8yd
	IcK93IxM1kRPqEc/lopVwfSqlwnalxkQ2Pn0fG517fiDK/i1YGLa9fLYtBfyXLpyBNTvkHXYWac7M
	SyqP4PDZcAhex0QAFK7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHpn7-000000047qN-3fZZ;
	Fri, 16 Oct 2026 21:48:41 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHpn1-000000047pO-3ROz
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 21:48:37 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-4a1d912a5a2so790565e9.1
        for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 14:48:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792187314; x=1792792114; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=pf4S8ZgH9+PvvxDZQuHR3QM0QpM39DDVDjfBr1JlGr4=;
        b=qqHq5XBIEw2VloZcGLcC0X+3OPjtV7ZrTGw4iVI84aM5Hw8wT2FuowbybwFAEw25AP
         ggVxEgkiD6fXSBfk3KlLZTPZMp1MKFJwRrxbks9X4+t/0bVFw4qkKNlJImc/y/2WjCs2
         ukIJUpUtpaq7k0VsP5rLKpmbvOsvvCuzVDVJZWmouUWVh31sY17p2Vn94uidydFPiu34
         Hp5xB0aGwiFTicvei0vMus9X+8LZQHC5X1Asa1WtiED3Av/h1yT2y1hOgRM98o9IyHVe
         EnP0+I0Mc2EQFvrEWwunfcUa98ROB2NZWWYsFnqDDYcrEtQKkF7ytCCueGJKBzRLnczu
         Ef8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792187314; x=1792792114;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=pf4S8ZgH9+PvvxDZQuHR3QM0QpM39DDVDjfBr1JlGr4=;
        b=WWD8Zh5gtmz3eLJ5r1Yk1zQeojTizXcDFkFsjeDKsOImwWAWfUF/si7cxFHIIaA+OP
         3N/NK22ScYBwGEVLuqgCowGSk3PTZUhu0UTfjlHr6a3yHzRm3XCwMi4rgXB53I0F1IxB
         d9NThiTkHq7/UatBYsTlizh4MqNbISWn2TEp5vOyIcJDtsWZK/u2NIBOEfupnKHyo02H
         D8V7tRF0h7EJK4Fb2x2WUBaP+wwfwdvXpxRI/VuW04+3DtOFM7q+FVuZvKC2Fkz4SHfb
         4Yos0zAM+UtN/1GVHeACnfNWV1lihWex+3W5etOiaRroirZp3h1tjkvB7N8GttY3xtSj
         OSKA==
X-Forwarded-Encrypted: i=1; AKwUvByLxk1z4dy/8KX+LHSLrkJuNq0JnXpXPCOyO3hfOSC6zoVt8NdZgSdlWf5IL8Y35D34mAKMHfywTG4=@lists.infradead.org
X-Gm-Message-State: AFq9FYIZL3dRQvrLKXTYjxGvSkq0/JbLYcCBerBBNvQvWG5m6KmhS7QA
	v5lQG2p4H+H69eZlMo2R0qjUzI1zAcGLm2Q8+yYWD9/muPvxItVqxw1/
X-Gm-Gg: AYBFou29uOIhl7h3NWnICtBZeS/fFNQP2y9rcV8e9/JDXePlDuemyQQxAwF6KXwFSCY
	+MHqrxGnDBuzgFZQ0I8DYlm/ZRK8ikPNdld6FlLccbqSLudiMHUeRpzxgUNhjTpVtupb3cV4S8x
	SaiH+MXobWTp5PGhVmZMjfCPAaM1s1ezS6UAvpPoKfk9Tdz1yTbxHwDeVwJ0qFyHeQkaaha+HvE
	dSTtIgVenjQUn8LWvlCxEuASnS8zdH5W3bn0vgwwCO7vCTLOYBMBm8SqavnHB9xjC4w2/ixR6wr
	yl9Ly7YdOExsn3wPCXvkXtEOpPkKN12+iuNDcZgYw/dhZ/LLj+Mh7szkzU42OjetTxXNUfuXPja
	icnEHEV7qBMVdJDMYN5L27o7ZAk8CmuUSt1LthLU3ytQzQCZZZy3l+GBy9/CwKfbspLNZummIVB
	QIcCl1j8XoK6fTxyYPrDnNrNoJrZjag0fYeMvKr4NUQhla0GZKIyZ/lfJO/Gj86cFhdChMAJ/0e
	z6cRhVx0yYTiWqk1zgID4+F2YoC+OyP55h50FN5KAFOhEFtXJa/CkgDWAIvOUYYY7nCGnh1
X-Received: by 2002:a05:600c:4f88:b0:4a1:9c71:9f17 with SMTP id 5b1f17b1804b1-4a1d75fe190mr20996095e9.9.1792187313567;
        Fri, 16 Oct 2026 14:48:33 -0700 (PDT)
Received: from SP11X1e.cable.virginm.net (cpc99340-croy26-2-0-cust244.19-2.cable.virginm.net. [80.193.62.245])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4a1bd9b35a6sm169959455e9.6.2026.10.16.14.48.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Oct 2026 14:48:31 -0700 (PDT)
From: George Neacsu <geocausa@gmail.com>
To: Bryan O'Donoghue <bod@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	David Heidelberg <david@ixit.cz>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
	Loic Poulain <loic.poulain@oss.qualcomm.com>,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>,
	Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
	Suresh Vankadara <svankada@qti.qualcomm.com>,
	tjose@qti.qualcomm.com,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	linux-phy@lists.infradead.org,
	linux-media@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 0/6] phy: qcom-mipi-csi2: C-PHY for X1E80100
Date: Fri, 16 Oct 2026 22:48:30 +0100
Message-ID: <20261016214830.967217-1-geocausa@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <5a90fbdc-7106-45e3-8fca-eaf5c60e0337@kernel.org>
References: <20261016-x1e-cphy-rfc-v3-0-40a346a72153@gmail.com> <5a90fbdc-7106-45e3-8fca-eaf5c60e0337@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_144835_876252_6984917C 
X-CRM114-Status: UNSURE (   8.94  )
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

Hi Bryan,

On 16/10/2026 17:09, Bryan O'Donoghue wrote:
> Using drivers/phy means not doing CPHY inline in CAMSS. If you require
> patches from the V9 series - you should cherry-pick them - sign off them
> and the post them.

Understood. The two CAMSS patches need only three of David's nine
patches, and none of his CSIPHY C-PHY tables:

- 2/9, which keeps the endpoint's bus type in the lane configuration;
- 4/9, which adds the CSID PHY select for C-PHY;
- 8/9, which lets camss_get_link_freq() account for C-PHY symbols.

The other six program C-PHY inline in camss-csiphy-3ph-1-0.c, which the
PHY API path does not use.

So the CAMSS side will go out as one series on top of this one: those
three, kept under David's authorship with my sign-off added, followed
by the two CAMSS patches. David, is that all right with you?

Thanks,
George

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
