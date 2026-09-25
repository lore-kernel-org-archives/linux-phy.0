Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1576CC9832A
	for <linux-phy@archiver.kernel.org>; Fri, 25 Sep 2026 22:48:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+5XvLuD9m9c7HJcVQnA6h2ytU83EvuTcjdoKRuPAvD0=; b=Wm6hOmLK1Q/rS8
	5i8V4v3dc85YaSUHXRYDlezAEdECDF9xmnK/kkOh8aIDssdE6tPbbLa6eHLzcdPZ3zRsaYLdGWHOj
	RnwzfiMYmIpr47QB6acvAZFSmUAg8P235bQfFRJvRYjvvr0WeiJ1+KtLFsHrUCnluLZRW2DYY7j3+
	vjZqTJ7FZDUSabCg7mPa53H/dYEuKuL6YFwYDqTHQnFqhBs6h6deyV+KQspMjZB5ZBA+Nh4RsWBMh
	QMu2QFPmk1+244ntTcTJ2JAvE2tQ79CqWgG1++csK3awhRMlQlJPVJnUo2DsVV5bQqsboIycI0l0v
	Tkl81stWTTTCi0g3lJYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAEiT-0000000Eb1l-2OfJ;
	Fri, 25 Sep 2026 22:48:29 +0000
Received: from mail-oo2-x2b.google.com ([2607:f8b0:4864:31::2b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAEiR-0000000Eb0w-1Wqy
	for linux-phy@lists.infradead.org;
	Fri, 25 Sep 2026 22:48:28 +0000
Received: by mail-oo2-x2b.google.com with SMTP id 46e09a7af769-7f4f0d298caso876882a34.0
        for <linux-phy@lists.infradead.org>; Fri, 25 Sep 2026 15:48:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1790376505; x=1790981305; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=jNk5t+un5bnjvH3s5WgAuUT8uY+MtqkDR0o9w3npnBk=;
        b=ARgTSFJxjxihnjd/VcQ20OlaCFRqrkHs5Paw1zEmk8BVpgrZtRjuN63qImMnduRFTu
         mHHSB2A8VJ8n15g0HdQuYc80bOQfflTJFxoE7nkgokGKGkqd/wsHlQAoGs9OqYqkaNbq
         1zcJpPRueBtMFw3z9YO3hWzIEsZ9QaW8JOlwGnkgo93pkkwIHRtwo8LMX7RTnE029E3E
         fo0iEcT8beS6u6lxSfCt3YGG+5JMtW6b3o2jCdOBECl2EZd8BznlAPV93VyhRcfP98fy
         LMnailcQC8xcZnfLc6NEi5Zzqo5M3PE2pKYkgm23KjfwvmvQCa/SZqdDyqgf7bx3s13R
         jYWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790376505; x=1790981305;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=jNk5t+un5bnjvH3s5WgAuUT8uY+MtqkDR0o9w3npnBk=;
        b=SsFqaKvSGAC5bPfh3WILmcfYTfVBbuhuGvkWZ0bdP0ZjiD9d/NycuCdw8abo4ywdOM
         Q/ZbN4+MTAeNRHzWvTw/PqXIWY1PSXgfYV0PDPST1oqaZYw4ckeIMQ4CgxH1L5oV25LR
         ZYn33ocVcwOUm9aPM8MElZdkj3dJ5rQhcdnwC5TdNn17j9/KZa7JqmTUdk1UoAsUhDgN
         oLfeN2pvHxFfBau29mR717SuWOJD3VJg53a5Lpq1pAdD9hVzm6Ui9lCrZXaoAqFzGZEe
         62XN5Gj11W19ucN2p+EnP4z28SXJtxd9bLcXih6pq+QEmVCqYJZLRi5V1PKbE0cfm1rx
         71Uw==
X-Forwarded-Encrypted: i=1; AKwUvBzWXT0r1Eds17GS5Ayz6JfjXWeZiPkTnRGjsprJERP0sYWOp+i0GL7yi/iJP0ucrkIYhjlf3yaycqE=@lists.infradead.org
X-Gm-Message-State: AFuF++lPVNWcMtj8+vxg8Jz1G9k0n8YkItBSMVk9rXrjaDRrAmQ5aoa0
	YvJfsSsSPe0kFWej9QCXu70rIT0peT+jUf330ldw62OkYkxf381jWkiFUGWPgmXgUA==
X-Gm-Gg: AYBFou3bvlGUJ21WEehRRSL9MMoTGs1PmYi6tRudZUp9QwBbzJNi6hY65kPl1U0YE/t
	t+PcyZEgkQFZ0Cg/WTrRYS3zdi2SPTrNHIyg1QPlcfMMOeitbs4P/LPhLgioAwHP/icOA6OlJ0F
	XlZPC6QqLtCrm0uce2BTUhPG7D0nv8E2MQS7l8yHFGSMckRu4DYiketN/oDDkyS+skNyyejhECa
	ZKs+VGOtnBy3L8YfTj6KaHMuJzR2hpTstI10+Wx/xZeIEk+aOlNyAMGvQNRPqFsABKaNidvrdNH
	I/XQwgKg0MIXKRNfPyMwNG4j84/LPL3m+fp92vHMvQZfFF54zCZ4wMKB0JeagOf4C6KfTejRm19
	NahzLs+6yX4veAsojsFdNnD/2Hi3A8iwPrBw8vHFZnBRIhKORIJnzkPeJr309G3jJXJOS6U5Svx
	DzMMD+WcIm8QF+PecCKdqwIITWpGPqUzHQ8Np9tiNzqy5ldP9WFJOI3kq0MVqdDAnWe26ge0YPz
	Jfsz9p1ERPaW5DRtxm0DANtzwU4mnXSruvRQaq/bKPB6e0=
X-Received: by 2002:a05:6830:4425:b0:7f4:eb76:8820 with SMTP id 46e09a7af769-8178168df1dmr7919471a34.13.1790376504752;
        Fri, 25 Sep 2026 15:48:24 -0700 (PDT)
Received: from google.com (222.97.173.34.bc.googleusercontent.com. [34.173.97.222])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-819471d2bdbsm2561506a34.13.2026.09.25.15.48.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Sep 2026 15:48:24 -0700 (PDT)
Date: Fri, 25 Sep 2026 22:48:22 +0000
From: Neill Kapron <nkapron@google.com>
To: RD Babiera <rdbabiera@google.com>
Cc: vkoul@kernel.org, peter.griffin@linaro.org, andre.draszik@linaro.org,
	tudor.ambarus@linaro.org, p.zabel@pengutronix.de,
	neil.armstrong@linaro.org, badhri@google.com,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v8] phy: Add USB3 PHY support to Google Tensor SoC USB
 PHY driver
Message-ID: <arb6Nn1Yy5_1u00w@google.com>
References: <20260925222959.3607769-2-rdbabiera@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260925222959.3607769-2-rdbabiera@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260925_154827_427675_F3D5437A 
X-CRM114-Status: UNSURE (   5.51  )
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

Thanks for the clarification on v7!

Reviewed-by: Neill Kapron <nkapron@google.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
