Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4267C4345F
	for <linux-phy@archiver.kernel.org>; Tue, 16 Apr 2024 11:45:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z3srkKHPhSawQTMsC5TVS3zbXnY2KfhchGyaW4Rfy60=; b=Q4AQWqBNV00sev
	Pk5Funzf1NV1ldsY+MhiGJtpfNM5/zcOtXyqjsM7rNqrBL2RZG5nsbuINvMd2LQnI2O8F6/PHkNUn
	rPLYbCXiQkoE+R9xQJzl/1v9/6UaKomWuCiLVq/URWTUaL4i3OprnBnc1COVOEhjk43Vw3i0+E+jD
	a7Eth2cvtux/2xSK9X6d8/5vqmR3AdLbBHaPlc/+fQC5p0kL1yki3G0VW674dCkU1OFGq5wuWxnpr
	SrnVVdfn8grYPDxYWozQca8BIh3nkbVaauJCYwLqnQQxz3ZVcbBmrQ7GcX4FClgApMHuvsXMtavrf
	dqAKq4x3uDJcTgxtU0UA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwhFq-0000000C0ET-1DX2;
	Tue, 16 Apr 2024 11:45:38 +0000
Received: from mail-oo1-xc2b.google.com ([2607:f8b0:4864:20::c2b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwhFo-0000000C0DB-1Pqi
	for linux-phy@lists.infradead.org;
	Tue, 16 Apr 2024 11:45:37 +0000
Received: by mail-oo1-xc2b.google.com with SMTP id 006d021491bc7-5aa20adda1dso3369568eaf.1
        for <linux-phy@lists.infradead.org>; Tue, 16 Apr 2024 04:45:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713267931; x=1713872731; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=aNdL72WRHKwu0pt/55XuOUw+WlB5anBc9z5sZqU2AYA=;
        b=Csnv2eWkirR2TrNvinw7gJSyXvYdFI8gmo81yScwZFZ79EZbF6G7qNQp0K5DeIb/8E
         sHhcWcOV3l51+D01XnkU9nYXAVJDYMAXFWVjtQw52O/5fMwAI4OIROSkRImQc3i6fskM
         IxuKYXmA1YobLRBLu3hIrwMttIeC+myMVDlsof5beYzHLx2Z6IFzRyr6FisY+fwXWaY1
         ezR46+cprnew5YuU7/0zIiKfs0vHiPy4W7CTuY6NXLRry0WnlQDfjl5Xh/fa+A0S8MEg
         DEuRNM6s7Wkm1jssSO11UTHRa35/Oydj+uWTDLDdY0jDSsDBMTrR0JTP49i1ZqwvJ2TE
         32xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713267931; x=1713872731;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aNdL72WRHKwu0pt/55XuOUw+WlB5anBc9z5sZqU2AYA=;
        b=novipwAKMiyUu89RtETuc2eaivMnOjTvetmoqWhyOfgmk0RbVVkN9FvieWHEBFnbt+
         qQ0dEg9N5yinjhYaKPGngjc9DM8LLZaYUzalr61kFNj4DmhrFMSVtP8zKy+Nr/y4J05N
         iZkrVWhx3plwVG5j6QhAjyQRYwQPoN8O6MBg6GXPqEysw+clZp9keX4rspbCgwvnhwcD
         3g//OgDqM70KSoJWkOYNIjJxlQxZgP9Z08lFfE4sdfq8hxQjFiKW+1hQFRcPRKTcOu5X
         MPLUYOP1P0P45G7WDqjsiCV/WRitG6l8iPnVI7NA2d7bkpuqxFJr9FV2LIvnMnwXcBrb
         DVmA==
X-Forwarded-Encrypted: i=1; AJvYcCU39mG6nHDNCygZEItbDh5vlW7fOsc+iTwozgPrigaR9DcbJi4G3L65F/TP743BGzvs8Dv2eu9S6agdE0yyS9RVu3+ud5YnWS9ogjo1fw==
X-Gm-Message-State: AOJu0YwYIwoMEuN177eg75E2W6kOJrfuY09Z4/zkStzxXZbcsYSdMQ4l
	XgXp/sj0tGTFD+YBCrGGEk90/f8WDu1OhNHCzWpXfrltKBT1DDGINPsY1BeohOUzDpRonyfl16f
	9KmYSX1RNPgldCAdqtLz4LmOoRTI6Fy52GYN5gA==
X-Google-Smtp-Source: AGHT+IHxJp/JnOY3GdAw5XogqzJkAdg7j5verXH36RVlSMIf75LFqNIKEqK/67ccEbRIuuWgR4HOxuNMXRZG6yHWE5I=
X-Received: by 2002:a4a:8c0e:0:b0:5ac:9f22:2686 with SMTP id
 u14-20020a4a8c0e000000b005ac9f222686mr5969583ooj.5.1713267931027; Tue, 16 Apr
 2024 04:45:31 -0700 (PDT)
MIME-Version: 1.0
References: <20240404122559.898930-1-peter.griffin@linaro.org>
 <20240404122559.898930-5-peter.griffin@linaro.org> <ce8275b0-efa8-47fe-a4a8-471fac9afa10@kernel.org>
In-Reply-To: <ce8275b0-efa8-47fe-a4a8-471fac9afa10@kernel.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Tue, 16 Apr 2024 12:45:18 +0100
Message-ID: <CADrjBPp2Y0tgXr+8DcgKOND2dLjUsNu-J7ob8tz=SeB4VeZ04w@mail.gmail.com>
Subject: Re: [PATCH 04/17] dt-bindings: phy: samsung,ufs-phy: Add dedicated
 gs101-ufs-phy compatible
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, kishon@kernel.org, 
	alim.akhtar@samsung.com, avri.altman@wdc.com, bvanassche@acm.org, 
	s.nawrocki@samsung.com, cw00.choi@samsung.com, jejb@linux.ibm.com, 
	martin.petersen@oracle.com, chanho61.park@samsung.com, ebiggers@kernel.org, 
	linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, tudor.ambarus@linaro.org, 
	andre.draszik@linaro.org, saravanak@google.com, willmcvicker@google.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240416_044536_390264_0E8EC2E2 
X-CRM114-Status: GOOD (  10.99  )
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

Hi Krzysztof,

On Fri, 5 Apr 2024 at 08:50, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On 04/04/2024 14:25, Peter Griffin wrote:
> > Update dt schema to include the gs101 ufs phy compatible.
> >
> > Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> > ---
> >  Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml | 1 +
> >  1 file changed, 1 insertion(+)
>
> This should go via phy tree. DTS should not depend on other subsystems.
>
> If, after resending as separate series, phy does not take patches for
> longer time, feel free to ping me, but first let's try to go via phy/UFS.
>
>
> Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>

Thanks for the review. fyi Vinod has now queued this and the other ufs
phy patches :)

regards,

Peter

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
