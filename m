Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3680606A320
	for <linux-phy@archiver.kernel.org>; Sun, 22 Nov 2026 09:28:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=lFyYRYKA;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=dEYXQW6w
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=yR05H3L99xCsaovBKNYNBHTl/X1kMRlOkGPdOF5rDnI=; b=lFyYRYKAfvFB3zTNcDUJcWhSdI
	SpVtQd/CBShHxEKXVJ/pc+GjFt9x2PnRKtATkUGP2Idoi0elKJSCzqctt3X9x0UcWI4yA4GU+jJML
	VXEx+I5/jhq3PqDUQBn85t93CFaN6u8UGAdNp9eEf/qclqY+VJNYLhusMikGITlcc+06dU/uZToeU
	x2WFV1ABsTCYPvPei7qcK+jSyCK9ouojAXmGGakAKD+N5De4qq7EruMX7U5WRC9B+sUV9iUOyJIl6
	2pI4ANGBiP5uINq4PPPrI787tsDUDdBmQFmNGnL2mDQAvc9e8Ezlw7c6lNKtXR+vWys35eKycf7yP
	Wtj0iolQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xV3rt-00000000ufC-2RdE;
	Sun, 22 Nov 2026 09:28:17 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xV3rq-00000000ueP-3iD5
	for linux-phy@lists.infradead.org;
	Sun, 22 Nov 2026 09:28:16 +0000
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-4a9be758734so1337509f8f.1
        for <linux-phy@lists.infradead.org>; Sun, 22 Nov 2026 01:28:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795339693; x=1795944493; darn=lists.infradead.org;
        h=content-type:mime-version:references:in-reply-to:message-id:date
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=+XU/L3s3AR1zRZpGx05jem8OuHu+Aq/54xxilnMM65s=;
        b=dEYXQW6wd3BgGw5yMq5XpUluHg/hj0gvTFha8N2PFyHoYJT3D+yW0m+9uZIk+wI3Wb
         NFMTGxpCnwWssAENCqHqxPXx1IkhSbnGncSXBp16dI2O0tPuw+LvTvIa/d7A3h+vdw1y
         yDZMDWTQJeuaVKWE68pYe3ub/5PcPFdJojB+aqo2NWiCyVXMEyDJbXCOTlne2gMfkLNR
         AygDizu5szuwf1AmRDJ4Fxa3Vrx9U79B8cJnBIFKVvQfXrUoiK7uMFgHEGfVzJAITu/+
         sPn7VHEP1bYXsh3Rv1M8pje+wt+DiuLYOsRDU71LNuc+ru2oTqU2Hc7DdFzrIEW+V830
         ij5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795339693; x=1795944493;
        h=content-type:mime-version:references:in-reply-to:message-id:date
         :subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=+XU/L3s3AR1zRZpGx05jem8OuHu+Aq/54xxilnMM65s=;
        b=EtOm2C7cHZqNalErL5X0ABdK9tE9QOpZcLOgu0yM0Vee5nyJAXqSLFcpG3+duBnzCM
         O56cIyTg64TDxkze5l1S/8nGT6tHqs4DXuFDi1XxgXzp1uESWQaunnE0uu2UJd8a0wX8
         i5tTETSoRPdOKrdUuWKvgsM97smbmdVlCkX63qPtzK/D18rXfyccuwFDzOhAgZGYozQ1
         bx5TIfFdJT/2K3eOWlVTw1+Zh3II3+2cLSYcAbEUmoJTPHqgbwZ3W2LByu1Q18lxotFv
         HN2pSo/zxKDB7lY+gmiQ3BnEfr9+m1GhjYZe2Up4gYp66GU52oYZj7aPc0bnpY1vfTKQ
         /Fhw==
X-Forwarded-Encrypted: i=1; AL+hErHhg7fFh99z13zYgF7nxUapYznuJJOhliS5VJXYxcSIM9eaSuMo6TsBjriPjTarrxaHnBFBs2kudMM=@lists.infradead.org
X-Gm-Message-State: APuU4Z8vzTKe81li0QtWor1ULegm2MDFNeZwNJ7U+91eGY8q3x8EJBP3
	acaAZDKnc/UgNMsLsC7YqNy6F1hEd1p38Ip5zA8vHxSwrRZyRInRjm2T0r8AJ3WYOH+n0g==
X-Gm-Gg: AZFdTZedx2x6lwiXHmgfc1TIXbiQXow5LLOVNT7C4P4W1JYwu/OIWv79BK3M9x2ZHIL
	IrsDvtBy2XQIgccbITojvEi9rbV8EFL9vFSdXZPr2U6QsPiekDkElEMMEoeS6+FaA1Y5v7BRorm
	LJeHoM+TQ3ju4s9aTwxge/krCe7ayGVjV0fwYan5qZEdbapX3lehS/BIuwbY6CMwZ+hqim93yPQ
	7P4rGtzhDoBfj7IPmy6YUMrY+cXkBosoD6dIFigjoL55DJNd8op3wj+BkSDu5G2VyOFRKcdnqwR
	WhKSTdVus98WEohgSKoLyAJhH1dCXNll1VXtsnGRBwSssryFVPwq04oQt3lxZelg/ncrDfUFy0s
	uqy7MjdSZAMU1IeRTQlpdCtgqu1hKmekZAp1DTufn3wDImMKswqrRkXaDScdphP128F9x9+cIeY
	YMoQ/mZE0sZVNn8kBlhAzXpl5YhAUU4VEWj7KV+QVYseiNYEcyBujVjgym0qTM76yaNoglp25tV
	S1+qH0OHgHenRH1Jv/2SUbYxAEjCUXF6OAO0KaCg/h2jBUx1/L9BBafwNblfppib3wmUy6DbzfE
	wSXqHIyEKkMt089i0IIbz33WhxQNh/mR3KthIggrBA==
X-Received: by 2002:a05:6000:299c:20b0:4aa:2bf2:4d98 with SMTP id ffacd0b85a97d-4abb0f3b4b0mr12062401f8f.29.1795339692451;
        Sun, 22 Nov 2026 01:28:12 -0800 (PST)
Received: from strix.localnet ([197.250.160.206])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4ad644140b5sm12250751f8f.17.2026.11.22.01.28.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Nov 2026 01:28:11 -0800 (PST)
From: Stefan =?UTF-8?B?RMO2c2luZ2Vy?= <stefandoesinger@gmail.com>
To: sashiko-reviews@lists.linux.dev
Cc: devicetree@vger.kernel.org, mfd@lists.linux.dev,
 linux-phy@lists.infradead.org, robh@kernel.org, conor+dt@kernel.org,
 vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com,
 lee@kernel.org
Subject: Re: [PATCH 3/6] pmdomain: zte: Add a zx297520v3 power domain driver
Date: Sun, 22 Nov 2026 12:27:50 +0300
Message-ID: <pmvkAYeQQxqf6KX1o0NWJw@gmail.com>
In-Reply-To: <sashiko-outbox-225964@kernel.org>
References: <20261120-zx29usb-v1-0-b0433258e51b@gmail.com>
 <20261120-zx29usb-v1-3-b0433258e51b@gmail.com>
 <sashiko-outbox-225964@kernel.org>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261122_012814_944198_1B6CBBE0 
X-CRM114-Status: UNSURE (   9.63  )
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
Content-Type: multipart/mixed; boundary="===============3345347590160065090=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-0.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

--===============3345347590160065090==
Content-Type: multipart/signed; boundary="nextPart7pWE9LkGQbyJZPD4mlTCyg";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart7pWE9LkGQbyJZPD4mlTCyg
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"; protected-headers="v1"
From: Stefan =?UTF-8?B?RMO2c2luZ2Vy?= <stefandoesinger@gmail.com>
To: sashiko-reviews@lists.linux.dev
Subject: Re: [PATCH 3/6] pmdomain: zte: Add a zx297520v3 power domain driver
Date: Sun, 22 Nov 2026 12:27:50 +0300
Message-ID: <pmvkAYeQQxqf6KX1o0NWJw@gmail.com>
In-Reply-To: <sashiko-outbox-225964@kernel.org>
MIME-Version: 1.0

Am Freitag, 20. November 2026, 22:51:31 Ostafrikanische Zeit schrieb sashiko-
bot@kernel.org:
> Thank you for your contribution! Sashiko AI review found 2 potential
> issues to consider:
> - [High] pmdomain: zte: child-to-parent device link deadlock in
>   zx29_pd_probe()

This looks correct - the particular line shouldn't be there, it was a leftover 
from earlier attempts to handle device unbind.

> - [High] pmdomain: zte: wrong supplier device in zx29_pd_attach_dev()
>   device link

This one is likely correct, but I'll have to do more reading to be sure


--nextPart7pWE9LkGQbyJZPD4mlTCyg
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQJPBAABCAA5FiEEQxb0tqoFWyeVMl1sPRO8yFRPGiIFAmsCtZYbFIAAAAAABAAO
bWFudTIsMi41KzEuMTIsMiwyAAoJED0TvMhUTxoiWwUP/1zrUTig3p1zQi1yN49m
lZsHM1mGoC+rZz8b6Gofd32dOfizYgpEF7nTr/TVadx3oSzKlKF5ayXHR/Q8Bgfo
ke9bKibuDSpORGTL5M5S4hxiwi9xIJ9Ut6alnVApxneNS1AkYMNFW/mDbSQGaY9n
RdRD6/yKt4miuWmJQdWJLCPaiwcM6e8AbUjCavhkMWEL8z1yxQaUGDNJKIdSrv74
OubQcJfVPr4v6UN7JfUvg/aBCyVH4L/hYNSBaasfH5Gu+BjgB0S6j/i1FY8TRhHe
/+LKiKGph3Bqq5Mh9Ho197e7vfKbK4R4agnxrJV5Iad52JhPtWYhiKUEdeRvduxB
fngHWLMNa2jDLI6iie9bWLAZGAP1Hi5ZeBQrkl2BhXN+BulUPfdNWH8nNzJduDMI
a5NNnM85VdY+jnIMl/D920QGXAii613m+nJg8R5jGg6LrGNt4lV+pcJO3tS7BhOu
vL7UsI2tna7TUMj7bwnVdzmbLMipw8prPWpRTNUNBkP0KaSl5CnKfce7OEYFfgvY
tLLl/eLGF+sOQ7Mx+ZQE6KE50wx23vPSrpjXfERtrFGwm5PyI9OO1fxrctm5cwdd
j7kTk7HZcAiZQUsC+qN436NqIkBHCNR9CCm5VLlOVCRxq9yqYNH0+00P5+jKGjmb
OkG3sJu7139jhrSQYgGPFpFC
=7yFm
-----END PGP SIGNATURE-----

--nextPart7pWE9LkGQbyJZPD4mlTCyg--





--===============3345347590160065090==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============3345347590160065090==--




