Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7AD33C5AD7B
	for <linux-phy@archiver.kernel.org>; Mon, 10 Aug 2026 07:48:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8KgAr79J1oltRIpfE5VHmOoUV7fi5iDwtlY/o3Kychw=; b=Jxl/b63nk2HkBY
	31U8KRXOPEGASE9GX8auk7U3Yyt4SBImDBUfakPHrI47piNUKLr429c/tCf499jsDVOqCYOly2ZWh
	6hsyWFYCo4EMme0JCQGOrakq0v2bVuuBDRnfnRudJrk9X/tK5Je+57ioFeAgmx8du5h7ui+qk2R9T
	CWy4Lu5p5VQVMUOhMt/m3PMcXGpD0LZ5c2vcKABlN7aAG2zRXrogTBnwQQwbVutwvM4KEDC60yPde
	I0JtUFDC3fU6xc6A/7dHH+h/5nPMoZ80ic2XTkx1z9emaOFVaUDN6ZTEqfVjK/nBBLS8CPGpa4W0R
	7ckcGa/sJrn5/mMlSA4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtKk5-0000000BDdK-3tSq;
	Mon, 10 Aug 2026 07:48:17 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtKk3-0000000BDcd-309C
	for linux-phy@lists.infradead.org;
	Mon, 10 Aug 2026 07:48:17 +0000
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-47fd4531020so843520f8f.3
        for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 00:48:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sigma-star.at; s=google; t=1786348093; x=1786952893; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=/GX/Abae2bC7fTPITHvOh46JQer/yR4FYa6yMFkvRmw=;
        b=umV6e+x2IQpoQB7e5DuoCARwdnPUSpYuUylfzf9np+U5gSycEWCWuQ0wjGWZPCi9yO
         FdwmSP/OUNxlPEgPIvIvuXNLvbVVaFK1CgJfV+NjKFC7UiXQmedk3cXoxhQrqw3a1Whx
         wopQQQ0HF+y9TflbhxQmBj4zEqjqX680rnnsEzdJgwo1gnz2xRtJsKCuDvoyr/EsR+/t
         jfICDv1sbYnVvjAFxl0yYsydMk7+7MlRnaaxSxs0HiUObHvNLIqQ/tQSpYhiDpinKlOv
         2yIUQoNzQ7Hej9XuOHWFYjHwJDjlxGc8duRW64JY+Wcn4XQdpj7vkVHKhr2KGZLKj/44
         1K8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786348093; x=1786952893;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=/GX/Abae2bC7fTPITHvOh46JQer/yR4FYa6yMFkvRmw=;
        b=Pe+u140qOPy+C8QNRaobtRdQgkw/Z++WmGO1C5IHyr09cRDw5I48fa03bMJopGGu0p
         1im6DXNm+8WFKIWwV8EIfdx/P+3DEuyEdey1FcFnou6KW2qApbSK4iEW/eHlalPVJcYV
         6XQxmT8U4re4rBa3JcN+ptUN+WoJXYNjw+Qg7sDT/ml++lg6GONzclDWuFoEpG13cY5n
         RTgyycdvjpFjpTBo4EmQIzLwVrv3sI2CXlZXBn8xqgCecGyRgUfHj2tAIviDbv9E8839
         ekLL4szEYCJLGZB32FcIC+wOSfV7Tcyn349xatzJCfHcR3hs1Ofs+j4TLnMdj/m2ySSu
         zsOw==
X-Forwarded-Encrypted: i=1; AHgh+RoxaCebmjVbRUXrvMjtEoU9KObTUkzN9WJZ2LC79MOi9s8sssSADQPOqRk83+miIenS6f1T7t3lVe8=@lists.infradead.org
X-Gm-Message-State: AOJu0Yydzib/4OhRpyVj/sy/H/QP5nj7wozg7VufFFbOKEg+VUd9y7cn
	k9RRcN7WPKumxJcvCrJk98mjLym6dIC8+AEJRN4ZZLOHTbHrsS2GdjyoNPFS/6Tr9r8CXZcBp7T
	uihsTj10=
X-Gm-Gg: AR+sD10FF/n4QccXIOKBO4tnxS88vlcciH0bn71CsfPs6FsCq6wNirR1UGccU9R7kb8
	2ujYDQPC4AaCkMLB2KomW8+Q/fWH2GQ26792Of3lT8QqsSwejDDKp6GZkRoiLnq0+Y0jhQAnto4
	PM35WjlRJRNu3V5t0+Q9KWZXtCqTZTDjv5B4uYo/gwAzA4/DwbyRq5JDlE7hr8PzTzGEQkTDRDg
	BhCciFo5o+nPu+H0Lgwvd3WogsQ940UVGy6yfQLz1LV0S6sezZsHMKccaZajtGUKAe3Md6H1ZB0
	yVF0pHbUFcAXJukV1E2t+JxL7mzmLPfBOSJaEH/HhzPFriQXn7+JzN5mS4LRmWbhdGX4awlh24r
	VG1FzU/OTN6yNMoI2T6qvFdOC9t9NMn95b89MZilzbT2HZRM3zlf9lbcfgKFpNdFH51kPuH2hC8
	yqR3yz/CgOvHpHMalj2Jvf6/UD5RpxALGLwcM4ndGz7d4Rgpcrs8yOsxi/bMXsRhkgy2PbK51On
	nkz0Il24d0=
X-Received: by 2002:a05:6000:46cd:b0:47f:f43e:f0cd with SMTP id ffacd0b85a97d-47ff43ef171mr35368140f8f.4.1786348092741;
        Mon, 10 Aug 2026 00:48:12 -0700 (PDT)
Received: from [10.115.255.165] ([82.150.214.1])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-480021e8b09sm35614018f8f.23.2026.08.10.00.48.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Aug 2026 00:48:12 -0700 (PDT)
Message-ID: <af10ff32-06a9-48af-9b52-022a0ba73277@sigma-star.at>
Date: Mon, 10 Aug 2026 09:48:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] phy: ti: ti-pipe3: allow configuring ACSPCIe TX/RX
 mode
To: sashiko-reviews@lists.linux.dev
Cc: neil.armstrong@linaro.org, conor+dt@kernel.org,
 linux-phy@lists.infradead.org, vkoul@kernel.org, olteanv@gmail.com,
 robh@kernel.org, devicetree@vger.kernel.org
References: <20260806091112.164695-1-david.oberhollenzer@sigma-star.at>
 <20260806091112.164695-3-david.oberhollenzer@sigma-star.at>
 <20260806092402.C99EA1F000E9@smtp.kernel.org>
Content-Language: en-US
From: David Oberhollenzer <david.oberhollenzer@sigma-star.at>
In-Reply-To: <20260806092402.C99EA1F000E9@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260810_004816_059252_C9E36B5F 
X-CRM114-Status: UNSURE (   8.03  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 8/6/26 11:24 AM, sashiko-bot@kernel.org wrote:
> 
> [Severity: High]
> Does converting all syscon lookup errors to -EINVAL break probe deferral?
> 
> If syscon_regmap_lookup_by_phandle_args() returns -EPROBE_DEFER because the
> syscon driver probes later, this converts the error to -EINVAL and prevents
> the driver from deferring properly.
> 

To rehash the previous discussion: The function can return either -ENODEV
or -EINVAL. The probe deferral issue appears to be a hallucination.

As for the rest of the ignored return state and warning: the implementation
mimics how similar properties in related drivers have been implemented,
see: dra7xx_pcie_unaligned_memaccess() or dra7xx_pcie_configure_two_lane()

Greetings,

David


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
