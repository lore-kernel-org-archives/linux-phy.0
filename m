Return-Path: <SRS0=i3rj=L7=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F5FBC07E96
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jul 2021 00:08:56 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 35D2F61C3C
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jul 2021 00:08:56 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 35D2F61C3C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tW7Fk0uj3aAZmsONDBjy5sMTIilIOpbwartgjEZYZIw=; b=YIc9Ux4QSj+8Q9BwqGjdrGzlNO
	AS4Ije943mQEAP57wA2CDz9JkyqgbwZ9NRkHCW/t5IwrE5dEaiFFZQTSW55X41gRPhz46vnUZpbRp
	jleaQ+ZbSSR1QQjjZ5RZso0KN5OCXcCkNofABaaank5BpfAnkJaNAGRswYe5qC1DgLX2qxfg40/sx
	48VTu70TRb5446o+bpVpgo5NXGm/NbtgApwIC4PHqVoRxenogfDC0jdKUBLqHWYv0VT31J3cM2ipY
	e+qBiad7WNcYPbIoprJIsva9vWHGhbkGjbMIwJBY52BGXUj1kGFsLqtLj3VZvawlMmvbDYoz+/k/d
	CAMSYohw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m0v7X-00D4Pc-NV; Wed, 07 Jul 2021 00:08:55 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m0v7V-00D4PC-3y
 for linux-phy@lists.infradead.org; Wed, 07 Jul 2021 00:08:54 +0000
Received: by mail-wm1-x333.google.com with SMTP id w13so628674wmc.3
 for <linux-phy@lists.infradead.org>; Tue, 06 Jul 2021 17:08:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Gla55/jHPuxQwImkvjfsRobqklhAZ+qfkkqKLknVHRo=;
 b=mOQgWePcC1K56tlv2aEBFfh91IJFrNCWRU5jA91FKOOzI74PclEHtryhKZPa6uIdmo
 yT+vytXiCu07rIgdx8zH9U7+pdoBVFfTyfXmL8sNceS1OhNNraOLbA7w7nhqgUPqrsut
 2IcnWwzTxT126zlekMje9cG1jJGVEL03HrZmQr5bQTM8YbLC/8RNdTjYg+4dk+HOYjZn
 a178qzfcrWfzoiJdof2Xs4qInKIse/cP4g16ZqRY13DB7WBJrs/xosOYXqOIxWeIo3m9
 OgGZTolqLqEyU07FSoL4Vaf4lUxGo97CbOjMg1394AiCJziHUZmhTMObXAxgfTnD5kzh
 zwsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Gla55/jHPuxQwImkvjfsRobqklhAZ+qfkkqKLknVHRo=;
 b=mkUt84nK66UDfgcs/N9pc1m7xjX+exzc/+5Px8vDZIY2dMkNSbGqEuQmKvWyTx/GgJ
 t5TBvQ2oukAzToRoaLhrLjaDzSI08iO2C9O2apOey7D8wmh73ugHNunoO7T+vHSEkV5E
 EjQEK0F2iv6JYHe0/fhDi1yHhn67OluxonSxwW9GpjsApSBc+YGVtOZWn+HFugTz0Oul
 QUqYlH1/LFL1YQ9B6k2lE6RSdnYlEN1U1jO2mN10GZ9ZL2cMgv9rXMTWIuuQK6hgjukN
 CKz8eUecIvk/d/N1xd3MZMBYYxojtwdG7hz3KgHvbUGtjzs+Ur5vOdBR08M3f6TrnBqo
 Xm/A==
X-Gm-Message-State: AOAM530yvDVo0U2ICKPPP0mQuu1tBrlXklypTGg/RV7YtI8w5oazoXeX
 oN6dSCxRZQsIf5kRXBijj9df+A==
X-Google-Smtp-Source: ABdhPJymF6fddc5+UbMYl591O+U+Nqqo0im0csyGJ7lPELRs2/bTi63/t82It4FkQWLVPrtmrdv0Yg==
X-Received: by 2002:a1c:771a:: with SMTP id t26mr23123755wmi.107.1625616531204; 
 Tue, 06 Jul 2021 17:08:51 -0700 (PDT)
Received: from [192.168.0.162] (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
 by smtp.gmail.com with ESMTPSA id
 z7sm4319909wmi.1.2021.07.06.17.08.50
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 06 Jul 2021 17:08:50 -0700 (PDT)
Subject: Re: [PATCH 1/2] arm64: dts: qcom: sm8250: fix usb2 qmp phy node
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: vkoul@kernel.org, kishon@ti.com, agross@kernel.org,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 robh+dt@kernel.org, jonathan@marek.ca,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, devicetree@vger.kernel.org
References: <20210706230702.299047-1-bryan.odonoghue@linaro.org>
 <20210706230702.299047-2-bryan.odonoghue@linaro.org> <YOTvcWnHFkbMHg6K@yoga>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Message-ID: <701dfb98-b876-b5f9-cd55-c90d557e64de@linaro.org>
Date: Wed, 7 Jul 2021 01:10:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <YOTvcWnHFkbMHg6K@yoga>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210706_170853_217559_69779BA8 
X-CRM114-Status: GOOD (  11.44  )
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

On 07/07/2021 01:04, Bjorn Andersson wrote:
> So while Dmitry is right about the logic in the driver, it would be nice
> if you would spin this patch to make us pass the dt-binding check -
> which can be sent independently from the driver patch.

ok

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
