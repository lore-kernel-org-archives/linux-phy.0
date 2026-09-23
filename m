Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 847C2C98304
	for <linux-phy@archiver.kernel.org>; Wed, 23 Sep 2026 19:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FtxyhSy91g502qXEK9vVKCJO4kDv5xCCQXFDmWI1vjI=; b=rI5jREkB7bjT7Y0ykE0UCAOoQt
	pwJbjI3H2LI4KWU1avrnnlNuwjb6vKEqonOUY5mPcX9a80ruCuyyDt9Uatic+LINcMYpy4FS+oVFB
	Bc30GEzZjy9BY0rsZKS1mSTO1r7MK2PLwn6JCmQSVoxkvTVqHWjFlpP1KtA+D9Dnm5BLhbsCSg+Zq
	WCazcs+RccEwXg1uS6mf24uf0E5XfF7Dxb9+ktqANwpKigMXl7DY/OAwo+fM/AwexkG6OogQOHWlS
	f2i7/gcoy7zKRF/oxSXiaxDYGvkxS6IFHHtYylUzz8JF5JObEECtN5RW63usl1P3dR/9oLeohhCvb
	/td3VoeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9SJA-00000009IdH-0HtT;
	Wed, 23 Sep 2026 19:07:08 +0000
Received: from mail-wm2-x10.google.com ([2a00:1450:4864:31::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9SJ6-00000009Ibv-1raH
	for linux-phy@lists.infradead.org;
	Wed, 23 Sep 2026 19:07:05 +0000
Received: by mail-wm2-x10.google.com with SMTP id 5b1f17b1804b1-49e620fa473so7714595e9.1
        for <linux-phy@lists.infradead.org>; Wed, 23 Sep 2026 12:07:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790190422; x=1790795222; darn=lists.infradead.org;
        h=content-type:mime-version:references:in-reply-to:message-id:date
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=yRrAZTJfbjxM2jhxnygG8js/jIMoruYacFcKnFzjgtQ=;
        b=oSaljcaMeEAtXOFh8MIE/iHcUfr6bkHZlk0JiakzkBJQvWkvn5ZN1is3K+MvtR6CpX
         wfPG1yY0GaCaBow9I7e3CijcfUofq8im6CXYhbff3O7T/9gsxkVuKAsZy1QkPWyGVxYZ
         dQ6dkJv136zfsh8r2vT9lqPUSpPNyGl7sLUU1S7vjkjvC3bmYhHo+dfLi3WiDEJvmuyT
         mzoqCe014dD+a3FijrVrxq144CaXrGo6vtvys3ppEQ3gNuRcIDkoR4YerNSfbOR1EXGb
         TQGfl9QxPZxfsXwDCg7CtBl9iJGvjtEqYLcGkZW0m1qyvczP02Fkpytj9YfDg7ekOC3m
         RFvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790190422; x=1790795222;
        h=content-type:mime-version:references:in-reply-to:message-id:date
         :subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=yRrAZTJfbjxM2jhxnygG8js/jIMoruYacFcKnFzjgtQ=;
        b=IECIoWUvw6Ns1WTp+miTHOdz2LCrN1ISXD2c0U5o6ZRuwoBcfiO1oU9wePvsYuhNGu
         I/Ar5BC4LkztlS2xNlDcZkfseHG3+rXOT4eezcumkVXOBjS6Vp70i5gPZZoQDUKmktMZ
         gO2oa44x0cVSbyGd0/hJyIKasE6qap54qvoBbPGkWrULAXt+pIjFL5fZcmMD6nuWobmZ
         TqHaI5ThiC1WnBDejJYM8L+nrH4Xf3yY6GMUh0VY4y7S7hLE6OG5VBe12EUpigRwuIvW
         hb/gJGugKtqbyfmbtVaOcUPyKNVPm5NVj1UM5akuZglIrVBrld4JKhhRgi39CwIGHicN
         3odw==
X-Forwarded-Encrypted: i=1; AKwUvBx8Bu9Kzc1njL867IE5okvyiU75uJWKWGyJu7io7zM0QjYtX9qIFzOjWYepvKb2cDE0GODm/8c/QkY=@lists.infradead.org
X-Gm-Message-State: AFuF++kDWPRbB821Jy6DayJbMGaXndfPU2v8AhIQn6pUBjY6/gTlL2V1
	PjVde/nHMreI7QwYB/hJieIhWO/qgCl5dYX1ZXb01CPtuEnOoXkAGILj
X-Gm-Gg: AYBFou2y9iGw/63dcXBWp4dKvWlvXlb1x6/wUYzmbQ6cMoN0UFeCprdQcKXgGeVmxo1
	Q+5T70zLnyRVjndEgEvwdai8HQxSjbhI+EeN42+SbyfPbqxuTwTNhN1X0VpewUStzA3WQWzpgdI
	sYxQ3efKbnoMwTsUusIknW/YkEo0LaV0u4xpXN1y7n3IsEZHoEsX9vuaDW+75TbyUY544Ztcj/g
	prFGCwwrQgD0hsE8OPxQ7G0G73ELesjLJVavMp6TGf4gv65WlFttuF9nCOOvSHqEPWIRqBLRyVE
	YRBewzYxTgTKnAmwDHz6U7XzgSZ1kWTA0piDweCYI4kDlFTwfeJioOavQu/ToNQJ7pEe8VRHTp+
	FoHf40L2zaYUQFpfy5UyPCLaY8RkYkgWDETEbprfyJQe5NvfUIf7x0eh+yZTyPMYi6d4EJ7/Ce5
	bkV4XWMm36LttvoDF4U45B4KIbq0TfizJ6OkclRyhNjfSvOr/iRYE+e4XNBdHCuIidiWYRJf/c+
	kxRLrphOJmGfKbH
X-Received: by 2002:a05:600c:4e8a:b0:49c:fea3:8633 with SMTP id 5b1f17b1804b1-49fe66fbea8mr2319335e9.24.1790190422340;
        Wed, 23 Sep 2026 12:07:02 -0700 (PDT)
Received: from strix.localnet ([197.250.51.38])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49fe0c3731fsm76197825e9.2.2026.09.23.12.06.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Sep 2026 12:07:01 -0700 (PDT)
From: Stefan =?UTF-8?B?RMO2c2luZ2Vy?= <stefandoesinger@gmail.com>
To: sashiko-reviews@lists.linux.dev
Cc: lee@kernel.org, vkoul@kernel.org, linux-phy@lists.infradead.org,
 neil.armstrong@linaro.org, linux-clk@vger.kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, mfd@lists.linux.dev, robh@kernel.org,
 olteanv@gmail.com, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v12 09/12] clk: zte: Introduce a driver for zx297520v3 matrix
 clocks
Date: Wed, 23 Sep 2026 22:06:51 +0300
Message-ID: <wditwJCDQOOx8yviJrPU5g@gmail.com>
In-Reply-To: <20260923184051.0BA291F0089E@smtp.kernel.org>
References: <20260923-zx29clk-v12-0-9c243796b6d2@gmail.com>
 <20260923-zx29clk-v12-9-9c243796b6d2@gmail.com>
 <20260923184051.0BA291F0089E@smtp.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260923_120704_789387_AF1E2E08 
X-CRM114-Status: UNSURE (   8.52  )
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
Content-Type: multipart/mixed; boundary="===============8744284413090177845=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

--===============8744284413090177845==
Content-Type: multipart/signed; boundary="nextPartbapkTblkT9q_p2c-f6yx5A";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPartbapkTblkT9q_p2c-f6yx5A
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"; protected-headers="v1"
From: Stefan =?UTF-8?B?RMO2c2luZ2Vy?= <stefandoesinger@gmail.com>
To: sashiko-reviews@lists.linux.dev
Date: Wed, 23 Sep 2026 22:06:51 +0300
Message-ID: <wditwJCDQOOx8yviJrPU5g@gmail.com>
In-Reply-To: <20260923184051.0BA291F0089E@smtp.kernel.org>
MIME-Version: 1.0

Am Mittwoch, 23. September 2026, 21:40:50 Ostafrikanische Zeit schrieb 
sashiko-bot@kernel.org:
> [Severity: Medium]
> Is the mapping for ZX297520V3_RFFE_WCLK intentionally missing from
> zx297520v3_matrix_exports?

Sashiko is right about this - this clock is missing by accident.
--nextPartbapkTblkT9q_p2c-f6yx5A
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQJPBAABCAA5FiEEQxb0tqoFWyeVMl1sPRO8yFRPGiIFAmq0I0sbFIAAAAAABAAO
bWFudTIsMi41KzEuMTIsMiwyAAoJED0TvMhUTxoi+RwQAJ7LdzarWQJsNGnuTtIt
v7A0IaCEADzg/eOTVZOapRX1DQ1MBLfOp8OAgAgWf+VqD0Fwfhhor5R5EUuDwWwC
igC8QX9otApyyzP14ewnO5PvOhL6fJO8XQSwz/Q0H7cj/Km7exGMKAW3bKPFmOkP
6A6BJXNUVUTGz8lCfjWUkEN0pomCjORtx93e4jDS4zStbtETvxjd1ADd+0yeRFe1
FUhTa4t6KZqGfme4YnFrRXu3JK4jJRzI+xDPqKObgTHZQ8sjCeDoi3zVkYBSoJb9
VvzaKBMvPAo3m01t0EZh/IT34zq0dxWLPL8cfX+FONANbR7s+zguec/DDpzzpPFD
BLs1BFcP1BkVQJmYAfS+s+6E6gEfPKFlc8OtJaeZhJOd6H3iirHQiD/xFB3loMfS
m45lbDTE+r6rNX766bMUmFbTF9a4OQbxVx7sBHlFrPUYQS3HV67euaaAjYYdpSPP
bDcDnAi7DoGNWazr1rC3bHZmnnlRObBCsxw4GiLFwfP0hCH9KuqgEBpU3IH7KQo7
RQnoef5ZGjFs2lKIFWBJ79gDblrL3DSafnNjAHwQdOD2EK2MyeNXggsvkMWkcOXC
V4HoRzPMRxoTcbPjbb0OTFkSOdIHk5Tbl5W2k5V+1dvWvYd7mokaq5RvY8MAaKf5
XnS44kqcP9o/dcJvhIq15tT3
=GiyS
-----END PGP SIGNATURE-----

--nextPartbapkTblkT9q_p2c-f6yx5A--





--===============8744284413090177845==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============8744284413090177845==--




