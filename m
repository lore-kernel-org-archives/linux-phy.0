Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1891CD61013
	for <linux-phy@archiver.kernel.org>; Thu, 29 Jan 2026 13:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X0SnbEELEXYx0TF6n92wskpSEk3WkGTMJFGnM201lCk=; b=v8uoRnvyv9lklk
	XO6hSFLer7XZxLmkl5khOKZVGP9hixtXnj1LHsb8XFP4pea4ard5nM3Qxre6vklI8QFr03bumvmDA
	ucsGJ/t+Xkao4xxZKM/H84eSYldLh/9mvo1di5mM2AF7meAeaRdnmamcvH0u1R9nffSQUkfe9sBL8
	iLleB0I4RG1/Wp3nGfS4M0Yz4U5cfYlSew/pOdNnideDrpmdChaWVc192mMAAuM0aohBCyWSEq2G0
	bjKurQ5tA21thEWNKZgW522MtDVOEe9zpagud3akbloecQngDrF5+RS6qPrfhvrurIbYJAkIIqbj8
	qh+BSOZ2f2Zp3rOD8Wfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlS2P-000000009pU-3YEe;
	Thu, 29 Jan 2026 13:26:21 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlS2M-000000009on-3g9u
	for linux-phy@lists.infradead.org;
	Thu, 29 Jan 2026 13:26:20 +0000
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-658078d6655so2052671a12.3
        for <linux-phy@lists.infradead.org>; Thu, 29 Jan 2026 05:26:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769693177; cv=none;
        d=google.com; s=arc-20240605;
        b=gCePOxUh1m701DBIPCwLulG9544LeXQS9ndIJflAuQ2tsFSE9rxtqyDA90I56htM9j
         eQf12qUqaCIQuBMRzFWp8jhpkV0ZrG60O9SsAeH3iCHbQIVVtaFz9QEMzKys+MaZycZn
         UUo0HqvQQuKikv7DFC9kWUm0ipylXjalf2rEDezSeapFtU4vGW8zPPz8Ud82Ms8+le6B
         ILBaqfa8iUONSOvYaBpZMUhk5t4NYzENqR+3tjpUV5e++pQzjkZX5RpNTyLGHHodq0An
         mHCBycThMxhER1xXzsKKAqB2y361I8Ja+G9Q/nEtBsq5BBDDCk6DHMoICSSrAF0F74Lr
         xzdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=3FAbLg0n8TvG7sx8QobTC/6/6GD1GFWRF9jfzZ0OiBM=;
        fh=lKESiJpyplb7hb37GwQNfEE0iNs21bcV9aaCqHe/FlM=;
        b=jf8u4LUJgsDaCefUiZLH7P50E5iMOmZMBvenL0uJHTR3jNjcKd7IaIWyPjKIPBodp2
         O36KNWJTAlov+CbTzH8tpCr5YcBqQcauJGhTU/7N/vkOHk4Mg2DLnaWqpgJ1qUC1GaB/
         F7ixX8DeSAjMMG8gJBCgidJXsMNP07lhp7F2j+dc6C+Ngat5AJHEacw4YlMDwsxMAqaE
         grL8eZTW+WJd6R+SrcTTh479E46pFeHiYuXDLz2qhdwUitysizQcZcvr57PUpYpq9iek
         VqtfnfIcVHbZo8wKpJNxYedlAYiuVxm4pQRx0MG9WUtNCtqP7olmhCn7JofRMXsx/W2v
         zRLw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769693177; x=1770297977; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=3FAbLg0n8TvG7sx8QobTC/6/6GD1GFWRF9jfzZ0OiBM=;
        b=zal5DVof01PFiRerjUzbSYm0UnOOsslQGaCM7ee9Dpi2WBQnLjO0Tg/yvficndzAfa
         h6td1ZgbV8FZhgc2ybJNpGrvSOPH35+1UawZ2YqBeNbNhaSP85LjsB59VuAiVqQpRV6q
         R9d6PwbQ4gVdvTIjhHQFy0x5dxo6r4c5yarxvCEMQT1je06hn+kvKBBD/Fie7oQVTACN
         mcURaSbwxx6p/xihxIoxivd/+BwI/fHcwrOQeF/6FptQpVKpTcLrsgaDQqKBC6VYJkBn
         HX65lxWQumKzLCrU7rI5/wY5zd4uS94tR6ve4Of2/lvp0GwXUtq9YFr1whJW1BeTzMz8
         jthw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769693177; x=1770297977;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3FAbLg0n8TvG7sx8QobTC/6/6GD1GFWRF9jfzZ0OiBM=;
        b=GidVhIYk2RA/0CiaLhrHDAkVOhlLM4eChPfTxuOUOmpe2KAIwPYHFWxyF7XZGGeuuF
         AA3k7O8ti4aKLN4g3C2Y1P7ZqnMQyzzKEcjkySf+ffuEY7bFFKKLT47thoi5dKhEpH/X
         ZuyycB4zORVvz2NxMcy0f0M4TkXnq9NBd6Z7M2gFIE/6XEfE5Zgcm7MydgMBG2vEurBI
         Dto4vbY5vBKUZ/hFTRtfyKvZqCr7D+xNqu2XHVJY878+V1xmcTBu66BElv9xnIobxm2N
         DwxEfb3fziEMaNKLKWKsith28ahROyAAcnB1YCUlnbs7Rv6sqsOdllLjF3lZISZsUp2O
         DD/w==
X-Forwarded-Encrypted: i=1; AJvYcCW16R5SxmrlngI4vawsLqQqUezTfJe4t6d69o4ZtYj4lRmsYHn0hYqOUD0h6k3RDYYhGJJv4qA2nI4=@lists.infradead.org
X-Gm-Message-State: AOJu0YxqMCL2Jdg/pf8NkQl/ZWzYQnimrrRTlWU7wCzMGwrt9oc1U/WU
	NOFm2jR9+lmH+bKPCz2+4ITchHWJ9qA0UdHKfgASUETT9XN06ie+C9zF+ckMIWRdQmCeuXCl+Pr
	WGSuKKD61ff8H1lhNXVPUCcfayGfUWTMNMhG8uRMs9A==
X-Gm-Gg: AZuq6aIlbXDksn/q+f3Yju9FR/EjL/7tmS0pimnLA/7y1i3ja0eboWRcDuBJgrIF68u
	PEMQG/+mkN6CCaOxgGE3Jom1PlqEHWR4yR8JI+XyP9ThmG7DNlCI27uJyJqevP1QuTB+VqoDCMk
	0vz6Ol6xkcWGvWdz/jV9Qn12wMiW4tzwIVTpb/+rr0GQ+zH1ViXu+mUGRHX1Z3vTTJoVNHFLDC8
	03LLzzSLMEU/gyChTmfLmsB0SzQGsvJ/Ona+DbQXwzjRIubzl3afikdE/RuuvMCmEf7xky23Wla
	XxTtIgVfDx73tl3K71V04q0h
X-Received: by 2002:a05:6402:1d50:b0:64b:6e44:217 with SMTP id
 4fb4d7f45d1cf-658a5f8e7cdmr5148739a12.0.1769693176886; Thu, 29 Jan 2026
 05:26:16 -0800 (PST)
MIME-Version: 1.0
References: <20260126092159.815968-1-vincent.guittot@linaro.org> <aXtUNxEmxcvuNj6J@shell.armlinux.org.uk>
In-Reply-To: <aXtUNxEmxcvuNj6J@shell.armlinux.org.uk>
From: Vincent Guittot <vincent.guittot@linaro.org>
Date: Thu, 29 Jan 2026 14:26:04 +0100
X-Gm-Features: AZwV_QjGAIu9W6_VpH3QHcTFTkleDIzRR41H4AQo5SaX9LTdvMXOOFKWjz1rXio
Message-ID: <CAKfTPtC6TOnrHbyS4mH05wF78OFOMp_ST1UOeEgNZ7+hhh8gvw@mail.gmail.com>
Subject: Re: [PATCH 0/4] Serdes: s32g: Add support for serdes subsystem
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, ciprianmarian.costea@oss.nxp.com, s32@nxp.com, 
	p.zabel@pengutronix.de, ghennadi.procopciuc@nxp.com, Ionut.Vicovan@nxp.com, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	netdev@vger.kernel.org, Frank.li@nxp.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260129_052618_932627_74AEEA53 
X-CRM114-Status: UNSURE (   9.67  )
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

On Thu, 29 Jan 2026 at 13:36, Russell King (Oracle)
<linux@armlinux.org.uk> wrote:
>
> Please drop these addresses from future patch series:

Yes, will dorp for next version

>
>   alexandru-catalin.ionita@nxp.com
>     host nxp-com.mail.protection.outlook.com [2a01:111:f403:ca09::7]
>     SMTP error from remote mail server after RCPT TO:<alexandru-catalin.ionita@n
> xp.com>:
>     550 5.4.1 Recipient address rejected: Access denied. For more information se
> e https://aka.ms/EXOSmtpErrors [AM4PEPF00027A62.eurprd04.prod.outlook.com 2026-0
> 1-29T12:31:01.197Z 08DE5971FB66165F]
>   bogdan-gabriel.roman@nxp.com
>     host nxp-com.mail.protection.outlook.com [2a01:111:f403:ca09::6]
>     SMTP error from remote mail server after RCPT TO:<bogdan-gabriel.roman@nxp.c
> om>:
>     550 5.4.1 Recipient address rejected: Access denied. For more information se
> e https://aka.ms/EXOSmtpErrors [AM3PEPF0000A798.eurprd04.prod.outlook.com 2026-0
> 1-29T12:31:00.781Z 08DE596525364766]
>
> --
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTP is here! 80Mbps down 10Mbps up. Decent connectivity at last!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
