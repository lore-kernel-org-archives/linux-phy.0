Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2A5BC52D70
	for <linux-phy@archiver.kernel.org>; Fri,  2 Aug 2024 04:57:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KfW/DRDjkFvsAeqpUmjIbbYN68w1EN8j7n3+ZiDGQqw=; b=AaUY/WDD1VdHRh
	kp46MOW86xQ74bOR5PT/XWKqxIoJj9nmlN5K667g2m01aFtrgCrYtn+6GgqKr/d30j2yVzcvdHk9h
	3kuxQjGqHrFmcZJmk4Gw4jkbZpUgtK5rEjP6tWcqwCh6OiMRQUyjVhkeaXAvCujENy1vlojhc7qR7
	xNvFtlTu8BTpLv0wUXN244zD6t5++Ea+assuL3MK2GfkAd3Els4foQzgDy120NHGoTC+ZTT3bGP9h
	lkQnXdzZI9WrvFolH0MAIxOEXPhAFuCag6ws0E2SHu/OlNvKklE0Xtsw0p1ivXFdWB7Ph98J88RDb
	RHjr2hO46R2a5AmE9swA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZkMO-00000007dbY-0K7U;
	Fri, 02 Aug 2024 04:57:48 +0000
Received: from mail-pl1-x62e.google.com ([2607:f8b0:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZkML-00000007dav-1dYd;
	Fri, 02 Aug 2024 04:57:46 +0000
Received: by mail-pl1-x62e.google.com with SMTP id d9443c01a7336-1fda7fa60a9so70600325ad.3;
        Thu, 01 Aug 2024 21:57:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722574664; x=1723179464; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ClY1xWctajAODs8lW27Ly344sHCaHVC1TvyMi1aPCGo=;
        b=RTXVNgLmO7KgomkH3YSmKoOGMhs+lfkBSLVPV0JzXimw+GCPU0OCj4fkgaN5fkMYCr
         1ONztn7coZTcAPqdjRo5JgaYTLQuVw0zN0YR5Id3RMSYbsiwmk7gPdYhWjvoFGQFQFt0
         6zY59bBb0Wr+WeQwKTSabFnrQrBg1Os+PvGAICTbkKvFZxF7hRS9esfu4WmCZJwtWxuz
         oLJKkWOqHkDQBu+e+ZWTj2QPIl+fOEpxJmkj+i7lFOggtN8/hJZBVLXG9jKNxzTwdH5T
         oxwccPfDslKlvXkeOmBuVZDYdCndDt6lC+K0uBdzZf+f7UL6/Ex6kW2SD6nm+4jSwy7y
         CZnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722574664; x=1723179464;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ClY1xWctajAODs8lW27Ly344sHCaHVC1TvyMi1aPCGo=;
        b=PEmRg2p7w5ezQ/9ISlw/oJjE5KFv2BS5t6ZJzw6csCCP0hAkgOFb4OtCHpoBcQa5Ym
         H8PKuTzECRt80z+X7dF5IepGHLE2x8IoaEIs/b1igT++Jt1Wvb4qjp79KCgizjairLlf
         fKMzLmdYFWIsIwImMMi5j31RqYwVBWp2ER1LcdyhSRnrI/EQUur8HBexoAlsplIXwKGr
         N3Y+16aZFOyue60+OCFWEZc7xX5Iw+ofCgY7m/9gS8zROBpDxP1NzGV7nhzxcLQqfPuo
         PQQrdbsT6+5WHU5TRFXdY5HjVYHGtd+LLi8eiKKOpBJjWvEEcASiGDC6LKPd8tCwMBNn
         AerQ==
X-Forwarded-Encrypted: i=1; AJvYcCVRQslDsNFq+RuvXJjp9I6S7f0ZzTc6PfyV0QxmyApKiZ/PwDU81bvbqKeqMxl88UD04787SMfYMv4qAWKiJhOzTCRkYP77MC69d1LFdr3b8iyASihlpsi0C3iz3xy14OrISk+63vsomP6W/Dvv/iJGQwQ/
X-Gm-Message-State: AOJu0YxTP9jkMRYEVXINpUo3O0/xYGWtvPPJOEJ/u8OKZv2z0qS8bPUn
	TbHW7kK9Dj1qbhorGuQZJyMJYTxMd3h2GWsaF7irQsMtKEKkQyB7
X-Google-Smtp-Source: AGHT+IEjndBPKaZuFvBDvzeVo6OJ/KzRcDEKZqlPbxKQyH6/Win1FbAdn+/HKpH/YQEFBQ/srVIw1g==
X-Received: by 2002:a17:903:1d1:b0:1fd:9fd8:1b2f with SMTP id d9443c01a7336-1ff57250e14mr35322045ad.8.1722574663706;
        Thu, 01 Aug 2024 21:57:43 -0700 (PDT)
Received: from [172.19.1.53] (60-250-192-107.hinet-ip.hinet.net. [60.250.192.107])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1ff58f52a2dsm7973495ad.65.2024.08.01.21.57.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Aug 2024 21:57:43 -0700 (PDT)
Message-ID: <d1e08364-8f87-4282-9392-31db3330eae9@gmail.com>
Date: Fri, 2 Aug 2024 12:57:40 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] phy: nuvoton: add new driver for the Nuvoton MA35
 SoC USB 2.0 PHY
To: Markus Elfring <Markus.Elfring@web.de>, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 Conor Dooley <conor+dt@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 Vinod Koul <vkoul@kernel.org>
Cc: LKML <linux-kernel@vger.kernel.org>
References: <20240801053744.807884-3-hpchen0nvt@gmail.com>
 <9cca717a-c7e9-4bf7-8cde-3a90fcfb1df5@web.de>
Content-Language: en-US
From: Hui-Ping Chen <hpchen0nvt@gmail.com>
In-Reply-To: <9cca717a-c7e9-4bf7-8cde-3a90fcfb1df5@web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240801_215745_473658_ED10F60C 
X-CRM114-Status: GOOD (  11.06  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

RGVhciBNYXJrdXMsCgpUaGFuayB5b3UgZm9yIHlvdXIgcmVwbHkuCgoKCk9uIDIwMjQvOC8xIOS4
i+WNiCAwNTo1MCwgTWFya3VzIEVsZnJpbmcgd3JvdGU6Cj4g4oCmCj4+ICsrKyBiL2RyaXZlcnMv
cGh5L251dm90b24vcGh5LW1hMzVkMS11c2IyLmMKPj4gQEAgLTAsMCArMSwxNDYgQEAKPiDigKYK
Pj4gK01PRFVMRV9ERVNDUklQVElPTigiTnV2b3RvbiBtYTM1ZDEgVVNCMi4wIFBIWSBkcml2ZXIi
KTsKPj4gK01PRFVMRV9BVVRIT1IoImhwY2hlbjBudnRAZ21haWwuY29tIik7Cj4g4oCmCj4KPiBI
b3cgZG8geW91IHRoaW5rIGFib3V0IHRvIGFkZCBhIHBlcnNvbmFsIG5hbWUgdG8gc3VjaCBhbiBl
bWFpbCBhZGRyZXNzPwoKSSdtIHNvcnJ5LiBJIGZvcmdvdCB0byBwdXQgbXkgbmFtZSBoZXJlLiBJ
J2xsIG1ha2UgaXQgdXAuCgoKPiBSZWdhcmRzLAo+IE1hcmt1cwoKCkJlc3QgcmVnYXJkcywKCkh1
aS1QaW5nIENoZW4KCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcGh5Cg==
