Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57D6CCA0FF9
	for <linux-phy@archiver.kernel.org>; Fri, 29 Aug 2025 15:43:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=achy4F6jKetFWaSqBKWvPS3LEsoAyDH/rFCcjAmpACo=; b=36suuhGQ3Z/XZ4
	ce6ARaZZEHSQ9zo+59SUA7+2wsveAS+UxsT0TMpTdncJYjh3+ZgGf+boVlpgh1KsSEetaWS1Yowdx
	w+RF2J/mWo9L2Azb5FOepwSCPCJBxJStlrQtCfbuL17jdOrQo1WY+3CMArn00y54hX19Jw49EFHyQ
	7Xp51IopHcSse5pFVHTaVOmGYtNeB5cgyvCCd8yHsJqTZqVT+mSRLFQMWnJy41sfaY6z2Gum24oxv
	uhc0svETOJqBRDwbQAtHKvC0djvN0owifxuZgCqcYm0+LuAp3jLBJCmGq0Fh8WVjrDaWK5svUdE8B
	jUFObN3UcTn460xxja7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1us1GS-00000006FiH-1Vtn;
	Fri, 29 Aug 2025 15:43:44 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ury2o-00000005cSz-3Bmk
	for linux-phy@lists.infradead.org;
	Fri, 29 Aug 2025 12:17:28 +0000
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-3ceb830dd58so733655f8f.0
        for <linux-phy@lists.infradead.org>; Fri, 29 Aug 2025 05:17:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1756469845; x=1757074645; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ghujH3DI//37KbeCX3UN89JJVzHmH+z7daXWxEwMXg8=;
        b=f0BNcrqjU5JEbj2nmZ8lMNoq+ualHtb5j0svEtrdjAgfYYf5CkEPTsHKj2EblmPqv8
         K75umT1K7fEYp02Q1PDvjmNrqIOvgKu2O8Lgrk46RXKP8wQ/LJadE16NVo4BWvnaHfkO
         aRzhbroKxbSdAGaEohje3uEDGfe+BMD5ofOlRGlMV8VaYNeaL2qgTJlD9KXGZ2PHXYIC
         aHUMzslib/JRHJdAtGH8D8jb/4Vupl+NiycRCfAtSX1GmxWCiX3XHR2aS9EDPdJewui3
         A54ytAhSQOaIQ+z/CcU5xndqQKAqoZMazpXsW+GLF9+GQitSQ0CT/5YSqX6NsbkHuz98
         AYIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756469845; x=1757074645;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ghujH3DI//37KbeCX3UN89JJVzHmH+z7daXWxEwMXg8=;
        b=mqmvpET5O89Pt2ssP1kqgwhQgHJX/dUYVjESfAmVse4au3LTOSGl5bsyCMziM4IFhB
         N9+YWMaiBvNP09ctKXZvX6uyaI4+luNGgLER3d/3aOSu+qmxNuq1q39djQb+ZFkX5wvv
         w0TJgaL2cRDlXAjv1o6g6M9aPnJ9Kxl+CXAUNknuyIw5UYxvXLkTSrf5frW/ik8GamDk
         umigf/FVrpoNWodt/xpl34iy1b4M3aylrpjsT3HihiySgDP/HKPoDeKJP2nnnqVBo1Zs
         dbfrjgtpM19TILnLhu30ev4aL4P4FH1FbZPpwpY82fwUVYz+f/bq5MlFMHd3nO9ClcMN
         LKzA==
X-Forwarded-Encrypted: i=1; AJvYcCUnfsiHis/p72gr7FjvislbjnHepKsn/Cb4oegg3NozT2APrH8Mudpoas6XjaeePLuCtjEMU9qg1hM=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywolz4KSFCw0nAQxYZyyU5fdJYnXEQlzRVRgmiI7fFQExS9E4cP
	fBTWldc1Llywlpsh4X1LFJJRSCH265NcAUAiWxnHfL6cpsNAVGkStKLON+pgnXeYHH8CMG9LK23
	hPX+o
X-Gm-Gg: ASbGncvQr+k7xzpeKg3tnfGvkUHNhtYuthNZG+BbqLEsSAoZjnTaomH60VfgA+s4xSY
	RAXc9bT2qdLIuUVGSsiuAkL4gxF7QZiEPEMJtA2TPpWai53SZHyMJv7Vsn+MCekyID59NIIBRxJ
	vpM7c8IH0ZZIcGH9v732VFYDE61U5/+J2BjyQcPqMVTAbYeSJguvYtFlh+3hMI92tG2VC84uIGV
	y67v2zpdI0UwaVpsVydM3j6PJFQt7NyymvUkYWqAeI7t4Gwj6aepmUoZpt8fBZFH3/leogIOP0O
	RFgs6U7mYOCH/cS6/4cZ2E9ow4eaCGwKRcRzNV/09Yc3sS4Ay8ucDbgWgxX2pRyGipdXTXhKh/C
	s+6tEkyMDO37+4n4YEKoGEHGPDMm/Ha6E0g6CxhadDW9gm24P8+3aZl5na962uNXBdvZdQ+vSKb
	g3Ly1oTfhDHdHqXr0sTe3hmmU=
X-Google-Smtp-Source: AGHT+IFYqGiFK1t5MMe09IWoUP29WvEbo5vkf2CXXru7AwbPHex/5v7KOICQ+I5oFXhPL1c8vkkZ4A==
X-Received: by 2002:a05:6000:220b:b0:3c5:921a:f440 with SMTP id ffacd0b85a97d-3cbb15ca670mr10835956f8f.12.1756469845102;
        Fri, 29 Aug 2025 05:17:25 -0700 (PDT)
Received: from ?IPV6:2a02:2f04:6202:f400:43c2:4394:d834:def5? ([2a02:2f04:6202:f400:43c2:4394:d834:def5])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3cf276c751esm3173107f8f.16.2025.08.29.05.17.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Aug 2025 05:17:24 -0700 (PDT)
Message-ID: <3731e13f-d601-4fe4-a3d2-6dd3289b6396@tuxon.dev>
Date: Fri, 29 Aug 2025 15:17:22 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 0/7] Add initial USB support for the Renesas RZ/G3S SoC
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, p.zabel@pengutronix.de, geert+renesas@glider.be,
 magnus.damm@gmail.com, yoshihiro.shimoda.uh@renesas.com,
 biju.das.jz@bp.renesas.com, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org
References: <20250819054212.486426-1-claudiu.beznea.uj@bp.renesas.com>
 <aLAZprjeKtk4pusw@shikoro> <ae53d367-2ee5-49aa-82ba-86f9e84d4d25@tuxon.dev>
 <aLGGmI8bpKNVaSAa@shikoro> <be706ee5-057c-4b0a-b0d3-54ca24087f3f@tuxon.dev>
 <aLGUJbA0szYQ_gN4@shikoro>
Content-Language: en-US
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <aLGUJbA0szYQ_gN4@shikoro>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250829_051726_806767_88443392 
X-CRM114-Status: GOOD (  10.69  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org



On 8/29/25 14:51, Wolfram Sang wrote:
> 
>>> Yes, I added it and it made the error go away, but still no USB. I
>>
>> The drivers are not probed or you see no activity when connecting USB devices?
> 
> Sigh, I was so sure to have checked OHCI/EHCI but only EHCI was enabled :(
> 
> Checking with the schematics, I get it that only the rightmost USB-A
> connectors on the carrier board are routed. Those two work fine now.
> 
> If that is to be expected, then for the whole series:

Yes, only those 2 are routed on RZ SMARC Carrier II + RZ/G3S SMARC Module.

> 
> Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> 

Thank you for doing this,
Claudiu

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
