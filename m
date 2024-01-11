Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60F28C4707B
	for <linux-phy@archiver.kernel.org>; Thu, 11 Jan 2024 07:49:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nmpoFZBtqJg/wLsqlSdR3cFcWGxkajAv+QdGatV3GVM=; b=J0RnXzZJtvmCBa
	NMxs8B09i9R1XLQf3tLudXoPcImMlW2SwyEaNbHbU6+yovDwRstn66NCsl7BPtMwV8lPycvNmA/NV
	2oJ4fP3H7oRTIxvdMloIQxruPcFxCyUhJD9MONd9CxEH7IUBh0blNSEsTW8zjZtyv1qKSDjixFXC3
	Lqu/y0LLwVwAzFbdW6SGSgdNj4919LAZiB3P3LsC/q3GfJ8h8bo7R9TFitqxIzI54fP8xkwNxQDuq
	FSvrgyuXY5u5+Sl0BMwxN+eQkDupfHj8zpS0Iu6ySyLjICIqJRwbp1vTc2xKvoV/uZJkHQ7JCIOIS
	gp+4gU8x3cWYd+jfWyIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNpoO-00GMRU-08;
	Thu, 11 Jan 2024 07:49:12 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNpoK-00GMPR-30;
	Thu, 11 Jan 2024 07:49:10 +0000
Received: by mail-wr1-x430.google.com with SMTP id ffacd0b85a97d-3367601a301so4421788f8f.2;
        Wed, 10 Jan 2024 23:49:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1704959345; x=1705564145; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Qk9dZVvi6gHkjFeJ5PX82VCiMGv5t62l2L7jmHeGkeA=;
        b=eV14q0tm3mk9LKdkx7eiZ/wJOL1QXUeGD91W3pM2drNYCB/9iXhPaJSz+WfzBkJh8v
         K7unlJAJBqZ5ixM0Oxpqa4i99NtGbB9GU0tVFn7M/1uoz70/kyfbOUo11h12AAvZ7qYN
         fTAjsQuEaT3hXJ4IMFuYav9Bn99AnJeIwMmPQl6PEq6LJJH32lWOITCekUxC+1HE5mvb
         z3IZViBoc/Oj1pqFRK1Fnyv0KmQWznV4fCezijL2ytCAtPmhzVXLJ1XFeBgrbCO6Jqfd
         IB/QGN5iox0ecDHFi+eBTU67OTVbyxkBV3F7iatgvAbugtOAu1Q5h+0FtKBt8llk9Wv/
         SQAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704959345; x=1705564145;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Qk9dZVvi6gHkjFeJ5PX82VCiMGv5t62l2L7jmHeGkeA=;
        b=Ep08dSBKVgezD3Wm5DZix53g6xc4iR8f5IIOZEizKs2XGUxOTOrtmlNVQQo8GkYfKq
         KentlHtgt8O3zAMbq9iXv48OkTk4jabyljILDxzD6GCkUwTKN5pc0jiJ+yRr+C5nNyuX
         elpLIrfKwZSNaeLpZ6fOHNUtYtl4BHHJfUi+NMF+YancO9R57fm46Qk8F5p2AxifX+Su
         qyVYcMwKdZpPcO95nznREaItBTRmQMNYO38Gua527Yf6D8qZ2Tf3ZFZbdjgATddln6ae
         IAUWc9KpyJoT/GXP8ToIC5xEdKr/f7z59XndRrWO0/e26A56ugn9uAFwwif3Z/+mDrpi
         oBKQ==
X-Gm-Message-State: AOJu0Yyqb+FpPaGz+ibqcGdnzmQkvCXfPabaq1HFvIdc6q7Q/Bnrf8Bj
	eo2ItViOHKAJWWGkF0znHc4=
X-Google-Smtp-Source: AGHT+IEmMY747/wijgSOZkIcHgbbGJbAg6gFpoMer7lIwceByScxrgsHHuGDCvigc8RSL8hweM2J1Q==
X-Received: by 2002:a5d:43c5:0:b0:336:841c:c358 with SMTP id v5-20020a5d43c5000000b00336841cc358mr201118wrr.155.1704959345254;
        Wed, 10 Jan 2024 23:49:05 -0800 (PST)
Received: from PCBABN.skidata.net ([91.230.2.244])
        by smtp.gmail.com with ESMTPSA id o12-20020a5d474c000000b00336aac53e75sm474657wrs.97.2024.01.10.23.49.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jan 2024 23:49:05 -0800 (PST)
From: Benjamin Bara <bbara93@gmail.com>
To: aford173@gmail.com
Cc: conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	festevam@gmail.com,
	kernel@pengutronix.de,
	kishon@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	l.stach@pengutronix.de,
	linux-arm-kernel@lists.infradead.org,
	linux-imx@nxp.com,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	robh+dt@kernel.org,
	s.hauer@pengutronix.de,
	shawnguo@kernel.org,
	vkoul@kernel.org
Subject: Re: [PATCH V2 1/2] dt-bindings: phy: add binding for the i.MX8MP HDMI PHY
Date: Thu, 11 Jan 2024 08:48:59 +0100
Message-Id: <20240111074859.907558-1-bbara93@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240106221907.325127-2-aford173@gmail.com>
References: <20240106221907.325127-2-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240110_234908_991007_67FEE9FA 
X-CRM114-Status: UNSURE (   6.94  )
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

Hi Adam,

there is already a V3 by Lucas available here[1].

I just noticed that the new PLL config has some common registers and is
therefore smaller, most likely there are other changes too.

Thanks for picking this up again,
regards
Benjamin

[1] https://lore.kernel.org/linux-arm-kernel/20230906184211.1857585-2-l.stach@pengutronix.de/

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
