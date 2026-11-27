Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF839606A31C
	for <linux-phy@archiver.kernel.org>; Fri, 27 Nov 2026 06:24:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=TZrNFR8k;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=rhrFcT9/
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=bYyGrWNcKgMVx5hPrP5wA7+8eEsY9JgXHEKNQUndclQ=; b=TZrNFR8khEpwKQYjw5JRUc+kDk
	SRScouVPPlq7oj7/inQTyf5uTHci2c7Kh5mvUdU7gMTi2HTQ99tXVKixA2FVNkdJNLd3TxYUqVI4F
	/zGh1ayN3ipVfM5FDs3RwDxlDNgp3aDbZr7N7F03DMgjd/LTG25+046JD7Mt/8e6NvY6DW2fclYg5
	zb4aL17QADAUics82eBdVvIsYimMGGZXn0CI8tE2voHSvzt0uaOXceNUI7ekMTHamM4FxFPLh3sw5
	sM3qzhiNZwwj54fpIGQvF0PjcHEhLsEkqjc9kHUmfphcMOHspvMu4YhGvZZcP9N0CdOmbAingLqo/
	OMlRLwow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWpNg-0000000F1xb-2lXE;
	Fri, 27 Nov 2026 06:24:24 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWpNd-0000000F1vx-0SwU
	for linux-phy@lists.infradead.org;
	Fri, 27 Nov 2026 06:24:23 +0000
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-6b89399d92cso1225077a12.3
        for <linux-phy@lists.infradead.org>; Thu, 26 Nov 2026 22:24:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1795760659; cv=none;
        d=google.com; s=arc-20260327;
        b=etitVT2IiwmruoxqkmxqroU2LHEHp8D0vYdX/+bk/2tpQayPNJEiWb+Aar2njox6ew
         EAiMlziS6f3FGM+XdGw95s3Huqb0BOBkdeRT1iszWzLJ+zZ2oKUggQgxhPqt1Ed2GFkw
         hgfZCfaKWWl5gW3NAAV4QBlxux12SWZAQpkJNDH8KK1jZIoMvMmwk5AWIE4R9FRGl+Bj
         hTvGJzg+aVgj8CO4fT8gH6ArSVlL6K0aJwgv0UlfdA77VnbXaQ6Q1Tw0rrECtOTI46vh
         BEQKZeYZJnVQr/vHysxGWmS/zspbZdPIT5SAzln7F6OWYD1Rl9AhwTRA+V5RjZ0lFW1H
         hOkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=SBkZFZAfcEuvoK54tInJ2sdXwGuJlWuARWjKskeguWQ=;
        fh=4hRXoEu7nlwfOBUv2gwysBBixcYgwqgla/E6sbZ+BRs=;
        b=TEZEt+DZEvOPrix1Wi1SMqD5mqOI8MMZZ1/ABB0tIyGgwiNtK2j127pPsQV+d3qmET
         TT8pL0dtSe9Ku+DlupoKvEOyRKFhdCg9pI+Ewa7X0zjSHIvmhX5Sjc/7ydA9ksKgXWRv
         l1zOC5rDIkvB9+WahkAORuLEJSOgOZVBxkhOgxVVa+L8OQBh8P5GjA1HKfoOCAgMsist
         tz9bHbtw06BftpUyMtEhEoUW9jQLnOWjWxbGcIbyfcCyLk8pjW7FSJtzF4SziipltkQA
         hPUOEJqMhtPbyw651O9ihIEsYo2bfTgGtEhVbq4zIwGCFSO+N01IoxPsAjF0EmiKs6pU
         Rl0w==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795760659; x=1796365459; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=SBkZFZAfcEuvoK54tInJ2sdXwGuJlWuARWjKskeguWQ=;
        b=rhrFcT9/2QldNSbThaYhFQ9jfhSwk/BoMzT1ERcWsEn26/26pkIkfO4+mRARlaTyg/
         BUAPkkRs0/9H41a7K/w2AsbLwNQv9Cogyg/rbxkrsSvbYL7y++dOMl+e5ID29iU87BzM
         gf5STsAaZqqoKQNolAPV4ILrLQSo6bgqOLneyIcWHlfL58z8pEISH9LkrBy2noxGj5BL
         KH/2HMAfB28utpJAwjhaQJ+hwTaU2WW/rRFRxO3uH5D7NcoFlcAyNcAHnUPAmOQEgt6q
         TRoCuHpN+5KqSgmNWkygpVpwSPlMDa0NtniAFf/SDzy7mVddKb6vAwOKViOafyb/oB0U
         T61Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795760659; x=1796365459;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=SBkZFZAfcEuvoK54tInJ2sdXwGuJlWuARWjKskeguWQ=;
        b=jg+DrUTf+d5Y2EE3rwt+uQvYNLupL/qa8hAYKRf3wfI8ObMsCu/2eOalzZytFXCglc
         89JzhYtcXzMDlsRdCtrevu7POkVvfXTX7zDm9oxX++BdGroP5rpWR0HtWqSyn1uuAmXT
         VVspzZZxfN+hl14UK8sbSUv7Sui5JkDi/uXfLvh/by5gVXnwpwRbI9wEjUOLiHVtX8br
         XzeVsbyCW3MsOOVeJH0vHzye+f8iaanmVnHyld1+EApMxqn2RtBs/aaqKLbWgbG5TkIC
         YWKJ/pfUT8pPIqLw93aZDdIGI2jQebalWhFiaDfZeaGalOytDCz7GkfQS2DjFVg2kZR7
         Zh9g==
X-Forwarded-Encrypted: i=1; AL+hErEfvew3EA3eJ807jOprHqtD/U8NodKBvrfJD2QYuZreB84psn12RyxwZfJ8kg/DoYgHNN8NAYIipAE=@lists.infradead.org
X-Gm-Message-State: APuU4Z+KL1oVUcHzZuMjIhCV3nMFFfL5Q15efd3nUeaNnGmoXMUxfKKI
	QeoK5jy//YKjcmLb1W/m+1RZIAkYGvjCyfNH3+hRbz/9UTBiRw4xhI2A0mtwDHKo9Q2baxtsk53
	CoLWkUXuT5qvVI67Q85MaN84cZAo7m2s=
X-Gm-Gg: AZFdTZeGZZUM3NEKu1AVXn22KQ8OBCYk92xj4h1Uq5H2ErNFvbLQGset92rKz4yGN+p
	cwbOj2xgj5mdEOM8ub7D/5Ap/bt6caxe0I4peyCNDJpFKMYpUxU5v/olT3/YYvH3BQKJG8+T5Dh
	f/uuUPDzr1w+cU6Gq1S0/RKoju/c/JkL+ioeYHUuay03oCycfKjoVtytUGcfmNpY/f/Q6to8o7d
	FpO/aIKxx+DZ1hhDJeR3jiJ0ISen3/Jgo7XL2brSPfIf/Ajmv/dqufEtP6C7MivG7mttbti9FH6
	8hAml3/bTN5w1Nb5gw8QTnaineRqculwBMxMyDBtGgh3b4oAPgtwo+Vd5mVyB5pc7WPF3zIi4eQ
	1dWOZ5MkY+JCLYx5FWErlmUxkvWaI2Nyh710gY1J99v0XXa7cEQmqgugizl19x2VgONjBGCU=
X-Received: by 2002:a05:6402:c521:20b0:6bb:3e3f:2cdc with SMTP id
 4fb4d7f45d1cf-6bb3e3f2fecmr4072358a12.2.1795760658224; Thu, 26 Nov 2026
 22:24:18 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261118-dcphy-rx-v1-v7-0-8de1adac3a74@gmail.com>
In-Reply-To: <20261118-dcphy-rx-v1-v7-0-8de1adac3a74@gmail.com>
From: =?UTF-8?B?5qWK5pm65oiQ?= <jason98166@gmail.com>
Date: Fri, 27 Nov 2026 14:24:06 +0800
X-Gm-Features: Aa3M54ovbh04_f0CIR-_hXe0njTveJM5wqr9aBZi2LAaLZkChYM5oN2Bhm_6rKk
Message-ID: <CAPwA33K7f2EbtH8rqihnxB8RkB1PzJTmDyGJ39ojROuTYwK0Dw@mail.gmail.com>
Subject: Re: [PATCH v7 0/9] phy: rockchip-samsung-dcphy: Add the MIPI D-PHY receiver
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Guochun Huang <hero.huang@rock-chips.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: Michael Riesch <michael.riesch@collabora.com>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, 
	"Bryan O'Donoghue" <bryan.odonoghue@linaro.org>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
	Quentin Schulz <quentin.schulz@cherry.de>, Sashiko <sashiko-bot@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261126_222421_194324_A6F016BC 
X-CRM114-Status: UNSURE (   6.37  )
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

Hi all,

Michael, I kept your Reviewed-by from v6 on 6/9, 8/9 and 9/9, as the
v7 changes there follow your suggestions. Are you fine with keeping it?

For v8 I only plan to drop the Tested-by tags from 1/9 and 2/9.
Please let me know if anything else should change before I send it.

Thanks,
Jason

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
