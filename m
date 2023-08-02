Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A672EC001DF
	for <linux-phy@archiver.kernel.org>; Wed,  2 Aug 2023 08:10:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TpvveHcMc3VpaGnSz1XqTlD+aZhXTj7D/5GiMbXstsc=; b=UaKgKjR+xiFYM+
	HNrj6XXJQDtGU4nWDlHIgvE6QcWY0lCyZi7EsVjXrNp7xov175fiUMTK2HrEVvLcSwWDD5agDLanl
	yG3IFg71HxqQ0tnj6pcTyZBiDloiYOod7e1wshvMqmZ833cbyrlTx5nnv+LCCTH4hT8ag1js3mekN
	4nCOohpctr8H8Bii0XHYgrCIvfdLn6m2tQXi7MC8EuPXNSGKwSRIMEHewn7ywcJOzzPR8lAFollk7
	rXD+dWyiW73i+JnMErT5rfRbuwYJ6nQ1YuXntpXXl3l2KeduGpqmKeOW+QMxMW0x4CIuZ6E6Eo+48
	7m16KclqPlvdY62D3USQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qR6vj-004KqS-1M;
	Wed, 02 Aug 2023 08:10:03 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qR6vh-004KpZ-0G
	for linux-phy@lists.infradead.org;
	Wed, 02 Aug 2023 08:10:02 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-3fbea147034so60727925e9.0
        for <linux-phy@lists.infradead.org>; Wed, 02 Aug 2023 01:10:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690963799; x=1691568599;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :from:content-language:subject:reply-to:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=l08T2Ya4che/Jgmf1RiO3c/9qzvBKrqZzRNZJZQ5jTU=;
        b=AP2qrRCgodOJfi7wTNlea2flPWh207CAO3pXkgc1g8404I1UE1CoRjyaOS+EblkIuE
         DpQB/8QP5NaZkF/HtoQL9n33+iXAcaXsNpWXB7oFgjYMS45TMLXEDblJLjQOQSzaACG1
         gMaIB0tOoqQrF9Gaq71DeNj4JHZzCoSv5OO8Nv6B7w3BV94gN3QK9+vOzHGV0G1mp23M
         ucQ7R/fhPIQ+D0rnprAp3zxOeIX3rj880oiipBNRIr88pU+CpBRICYv7ldNYb9a83d6/
         l6sgOdOS2RqZWBVLeeB5g92/lAEkFEw0ejPGFJIGnVw35/RRE14s8dP0qwWQbLBE1TL+
         keVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690963799; x=1691568599;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :from:content-language:subject:reply-to:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=l08T2Ya4che/Jgmf1RiO3c/9qzvBKrqZzRNZJZQ5jTU=;
        b=Fp2gn3MUgh64aZEF442j1gIJLTUQMtvqVMc7caHjJ91KduEpeg5oQrbh2hmprKyTLZ
         zZXlUymfI1xm7kbwrP6uhkTPtgOWVhBx7w3gnPQYlgJafr4D/i8t5V3M/B7Nb3iqoWAK
         grNYZIryEnDCa55QGiRlbC5hUot4Em4UtvsFT4UzBCjYovF6GuiwZI+iSPuZuYnC62i0
         UP8+pTFoEVcUvM34+p/IJ4TJ3ubBRPSYHm4aNA5uiuL0L5Nimt/9q4htuSJ8Fh4ye1k4
         1IJiNiheQ+3fosQ2AnyC7CsUi+PhDMbK7ErbVKFdKVVYLFWf0CCKSK71bma9VO42wQfT
         XmcQ==
X-Gm-Message-State: ABy/qLaYhKBSST8ODrzPMBB44LEryleuntY3GV9d0QGR4I1aR0rs25Cw
	CUeXCziDnOMXTy27djr9BZ1nqg==
X-Google-Smtp-Source: APBJJlGjbDNLICZHsNDUhuaFTQa5+aL0NsgoSmAxDGgml7L+5MgZ10kVZ8MHdakUQEAQi/Ju98oVIw==
X-Received: by 2002:a05:600c:40c:b0:3f9:70f:8b99 with SMTP id q12-20020a05600c040c00b003f9070f8b99mr4209647wmb.7.1690963799559;
        Wed, 02 Aug 2023 01:09:59 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:c5bb:5b4:61e3:d196? ([2a01:e0a:982:cbb0:c5bb:5b4:61e3:d196])
        by smtp.gmail.com with ESMTPSA id l18-20020adfe9d2000000b003112f836d4esm18210540wrn.85.2023.08.02.01.09.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Aug 2023 01:09:58 -0700 (PDT)
Message-ID: <64b816c0-b83a-b182-90a8-b7f289d11b7e@linaro.org>
Date: Wed, 2 Aug 2023 10:09:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v3 1/3] drm/display: add transparent bridge helper
Content-Language: en-US
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: dri-devel@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
 freedreno@lists.freedesktop.org
References: <20230802011845.4176631-1-dmitry.baryshkov@linaro.org>
 <20230802011845.4176631-2-dmitry.baryshkov@linaro.org>
 <9caeb91f-1277-3645-cbbb-7be538d80e2a@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <9caeb91f-1277-3645-cbbb-7be538d80e2a@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230802_011001_122659_BCB0ED33 
X-CRM114-Status: UNSURE (   9.99  )
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
Reply-To: neil.armstrong@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 02/08/2023 10:08, Neil Armstrong wrote:
> Hi Dmitry,
> 
> On 02/08/2023 03:18, Dmitry Baryshkov wrote:
>> Define a helper for creating simple transparent bridges which serve the
>> only purpose of linking devices into the bridge chain up to the last
>> bridge representing the connector. This is especially useful for
>> DP/USB-C bridge chains, which can span across several devices, but do
>> not require any additional functionality from the intermediate bridges.
> 
> Can you CC me on the whole patchset ?

Oops I am... sorry for the noise...

> 
> Thanks,
> Neil
> 
> 
> <snip>
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
