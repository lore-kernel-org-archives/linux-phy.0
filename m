Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74943606A332
	for <linux-phy@archiver.kernel.org>; Sat, 21 Nov 2026 19:06:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=rM9co+YC;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=Pm30k6e0
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=KVWcl0a2BS0aUFiHX+7l1ZWoXpiDFG38ryIEK/M7bBM=; b=rM9co+YCmrG0XzRvAU0986oExb
	TT84//5/8q+fYcMS5Ldkkx9mEsd8X547T+JhgIrC73TB4vrwLQS0lacY5Sed5jQFRGrS7m+6+pU0c
	Uq0nPFuXPimMegzX1FoQLHceb4yZxdk+zEVQO+Q9AUqQsKiCtVQ+rAlgKgJLUb9HyQlcty/mwnkaZ
	BPKxjifqVAZHR29k0dHeO/+e7CJnisBBbaT7CqaJ1icCJ3y1ioyIKg6X33vyAMuDS5M/X5NJo+7En
	ItsNezqSI0uBQcgi6KQDKw+Wxca34q7IxUWNo5d4JqI3d3fsWNqE36QdAXL3KUniGwVzwGaCW+JNx
	kwjbv/DA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUqPh-000000004XQ-0r2R;
	Sat, 21 Nov 2026 19:06:17 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUqPe-000000004Wk-1peh
	for linux-phy@lists.infradead.org;
	Sat, 21 Nov 2026 19:06:15 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-4a42b34e930so1711175f8f.2
        for <linux-phy@lists.infradead.org>; Sat, 21 Nov 2026 11:06:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795287972; x=1795892772; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:content-type
         :references:in-reply-to:date:cc:to:from:subject:message-id:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=FpKHiV2uYxe7Ki0iO3VWKGByi0ydeGzhGSrgX6lNY+s=;
        b=Pm30k6e0mRQku/N1Hah5IGZNZDLrkkQm7QIRg/ZGaga/Ja8qermDte3BsHqPBjMEci
         qZj8ANgAoEJO9lUeLO96FitkdpxiRr0M+JUac3eJBfOH6pZHqxE6i4u7ouqTuPlt83iw
         Co7JIeIkqOO9CtRd00WM510BQTWJn351CLtGbnBFGHhiyW2sktjviu5zJ27Z9jGc3YhT
         9FSRQOL1VPlhY0VCo5HmeGeq3NLtvtZ/F7VNCcAnmx5WBc8KOEKwXoqtm82OZST9GMOV
         y4P6Uq0TDqWpxfBAtMz8QJMCbaDo4auxSTzGDvPKjtAGHv5qhb2/ozV0+B6MX+kIBydN
         YBnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795287972; x=1795892772;
        h=mime-version:user-agent:content-transfer-encoding:content-type
         :references:in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=FpKHiV2uYxe7Ki0iO3VWKGByi0ydeGzhGSrgX6lNY+s=;
        b=Z/6D+0UgHK+8n0TP2QhJmHMZQ7keEZ8IThYP6DQ/QH1Mbdu5M5LKTomtHRRpk2uV1Q
         sT1YIEIIFcMtkFTXlHEVntdGQ8W6Jm/lcvQex/n5HMnBpTxF6hxoYpWpIwpEgqqfyylM
         ZPAdxVCUt+qstUGKs/pqe6EsRbnruH/gDf3YEppsn5OOeFvKXlQbE0PQ19Bf9rgqdbtA
         U2zEYgisOLJkQJupL3u7mqWc2bHqUsS+ipCYezEkAodNPQ02afPwWv2uBS0DvgiER00i
         Kkayivx5FDrHPhpPmUzvxH2r7e4xCqu6KZnElsvEqQJ/RMROadCbm5Nh42OkqBtJPgP6
         lx9w==
X-Forwarded-Encrypted: i=1; AL+hErFyT4JFdcvCB2dxhBcZbsvef/FFwtigYt3bE04WXEIHF+0Rxc0bhpBzkkjarYk1bOFlSXIx7zAGxIc=@lists.infradead.org
X-Gm-Message-State: APuU4Z+cElARpiJ1RqxT4sP9JASeEBEocBtSHSrTKVLVwcioq0OIBqBa
	aP5kZuRRtpGY1MAroN9aEnuD1VPv7i0Jcyh5Ry/Jq/Vssep1p/JA+95z4GUCvdmlo6JXcA==
X-Gm-Gg: AZFdTZci9s9ujg35LLJjeIaPPECRxYDUC6BeYU4R5zEb6fZKY28e9fTbHKohQDtH7Ec
	F8vDAYUgord2isNUzOXGpR4n99Kczk5O1w7CKzR8bf8I5hIS5lhF4jRBnpKHNhsl8xrvHdjc/+5
	9VkibTwCRAKsKaV+uEHidVVb3OGQ5lFyRIsZ0yh4DYUs07+T363hIRpyuZva0o4IOs62VZWVjVB
	/tiTgVNNs/959VSygFKPbtWPKfmfdT2G948aGo+Rc3fteAktnMKTd70auzn3oGlA+0u5q1k0tQs
	6skjchKTJBj6ZNcYgIe10POD/F3pOEkyc6EsgjHLU1RZ3CDithPk6A9BIKSLF7pTCymSjyjmCuv
	UNz2BI7lxNZ+/lC7K1zUBwn7PEqpYFC3mlcaLzOUXu70kR1vCKM+mDG7KzBgHVhUH0oJ5dGjb+G
	nESM4SLg5bb6xqRTDoSb60iP6ZVgoS9H+HSnn1RlCHf8zohEks2wxoIINP4O0ww+R4NpgnO4Cbp
	vL68qHYr4viLtJLFk8U7wBQlH3tum2JdIjr8gr8Tqv30eMr+slMGqCeXT5zSQ7DzIPVvcEkOK6v
	zNtbdum9frVXKhCh7XoeM24iFsMwY2G/DswHUPwR/LOPBtaGnzXDLkXHmVV46k6waACr2/DsHgL
	jLGYUm7ln1+U9OEL8vdXtw0u7JnxVug==
X-Received: by 2002:a05:600c:46c4:b0:4bb:6a5a:7834 with SMTP id 5b1f17b1804b1-4bb888106damr154232025e9.20.1795287971698;
        Sat, 21 Nov 2026 11:06:11 -0800 (PST)
Received: from [192.168.0.10] (catv-78-139-0-46.catv.fixed.one.hu. [78.139.0.46])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4bb8d4f9aa8sm148595925e9.4.2026.11.21.11.06.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Nov 2026 11:06:11 -0800 (PST)
Message-ID: <6937fed688e4bf1d7cb81b004c179cc4912cf6e2.camel@gmail.com>
Subject: Re: [PATCH 0/6] Add USB support for Exynos7885 and enable USB and
 FG on gta3xllte
From: David Virag <virag.david003@gmail.com>
To: umer.uddin@mentallysanemainliners.org, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam
 <mani@kernel.org>, Rob Herring <robh@kernel.org>,  Krzysztof Kozlowski	
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Marek Szyprowski	
 <m.szyprowski@samsung.com>, Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Peter Griffin
 <peter.griffin@linaro.org>, Alim Akhtar	 <alim.akhtar@samsung.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org
Date: Sat, 21 Nov 2026 20:06:10 +0100
In-Reply-To: <20261119-gta3xllte-usb-battery-v1-0-0cf5f763522e@mentallysanemainliners.org>
References: <20261119-gta3xllte-usb-battery-v1-0-0cf5f763522e@mentallysanemainliners.org>
User-Agent: Evolution 3.62.1 
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261121_110614_486079_CB501488 
X-CRM114-Status: GOOD (  17.60  )
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

On Thu, 2026-11-19 at 19:49 +0000, Umer Uddin via B4 Relay wrote:
> Hi guys, this patch series adds support for USB on Exynos7885. This
> series
> is based on David Virag's work[1] I had rebased it onto krzk's for-
> next
> tree and tested it on gta3xllte. This series also enables S2MU005 FG
> on gta3xllte, which is also tested.

Hi, thanks for reviving my old patches

I actually have sent the patches before [1], got some reviews, but only
ended up with the clock patches submitted and applied, and never
actually got to submitting these patches with fixes based on the
reviews (which have been sitting on my PC for quite a while).

I think I will submit my fixed up patches (the ones you submitted still
have some problems), and then your gta3xxlte patches can sit on top.

[1]
https://lore.kernel.org/linux-samsung-soc/20240804215458.404085-1-virag.david003@gmail.com/

> 
> Please note, I did drop enabling USB on jackpotlte, this is because I
> don't have the device myself to test the changes personally and I
> didn't
> want to risk a regression on jackpotlte.

I can confirm it does still work properly on jackpotlte.

Best regards,
David

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
