Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B57A7FEFB44
	for <linux-phy@archiver.kernel.org>; Fri, 27 Feb 2026 15:49:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0ZgPkFB/nxR0prMn9clSOcT80nqOgMvRqx9FOrGuFew=; b=RlbjdZ2VQf4Wi3
	oWv4s9+sGry00TNqBgdSDpxmoBJ5BMJFuEM28CspO5Xi/1+NAFYTAyQpZiegkUKmjQCrcIxJ+34Uo
	FDQ8Qxm+qjN/Xekb5g2g7wXOqU2Bo+9baHdBTB0ifbp4LaYjD0yXLOzAIgktsUitgn3MAB6jitcQa
	833PocJssAthCOaI/C+A394dfzxMm/7IyTLVFEOg+/b8s3r5nKV2at0rZrcaeQYoKC92ihO+nVv5A
	5TCfD8ba0eYW7uekpIT3L9hF5sAYIGDPu40vnxfbZNlLmEKzZD1ZZkrRmQPveE+e0qBccZbzsOC6/
	xOzgNxZ6Hz/ELy7aDVew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vw05L-00000008gPV-27r6;
	Fri, 27 Feb 2026 15:49:00 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vw05I-00000008gOO-1tIY
	for linux-phy@lists.infradead.org;
	Fri, 27 Feb 2026 15:48:57 +0000
Received: by mail-wr1-x430.google.com with SMTP id ffacd0b85a97d-4398ebdf4c2so83263f8f.2
        for <linux-phy@lists.infradead.org>; Fri, 27 Feb 2026 07:48:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772207334; x=1772812134; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=UNM6LkJDaly96+frvDYVu+WZiJv/Y/1sZYEDKoTKzhk=;
        b=LVrfo/WZ2Mvzm8upc+srcseXUar8n3u2UkbjtHHr+6vaALyLdMypuT/NnWyzx2Q6j+
         U1xemT0xa0FS88I6QDwGDjELXj+ag5WR/M1T8zF3baTJFrjEvQ1zN2llBfC9sizhlbo7
         jtOK5mpDdOy41NNt2dgNcsEfXSQWVNc6+QVs7JEylWBq/qw/a6l0q5BI5SQH7X3jpAOe
         4rJOlX4fsWI6XgGIBN9E+TeHF6PZfkgIyS4MTNKQdJze/eGofKVxly1Si4Ru3XxSHkr0
         bNf2c0JabJL6uV8vtrnAq5o+8rraY8jnsXSEMdlMO576ApXA+vF787ClOCURyBOB9JkZ
         BZkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772207334; x=1772812134;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UNM6LkJDaly96+frvDYVu+WZiJv/Y/1sZYEDKoTKzhk=;
        b=XQpcvc62vg3paXOOzlrGWxtFMMcOePJBNS4g09EcUNEhDL5bpuVn8q5iMEpTA31QIO
         zsIXP+bbSheZ9S58FROAMDNns0ZIgIgQRYt0Qq1VFqPsv1uZu1zBtv0rdIuduBGVSqjC
         c6Zz+n03dQ2m8VZKUvPx+zTLBMHRd8/nuaXFSSE0WwelP4DIgUSgFJKN7jhohOvJ0eLE
         vamvMVBNb34Zur1oq37JxvynY3I7R1c7jHuymVrr/4VQ7ruapS0Pt08yes+55fsSAua9
         hhY+YAKX2Sq4Io622HciKVRPoSPxw0SmRJNiblr8SJEwpfFWepSV26yJxnGJxaUDNlPt
         Pdow==
X-Forwarded-Encrypted: i=1; AJvYcCX51NPYjoYYZb27ak0cHYHNHSM+iD/0tk4bDWyW8CJX6++WGAEAthd1igZ5YU/8XZum3nlBwzxFX6M=@lists.infradead.org
X-Gm-Message-State: AOJu0YzJM7c6u524iFKLt/TtkvB4tP0Mqqv7IvIT9SqHZgPAfSSyo/gi
	oUR2Ae20ONqjWAv84NkanX+swSfOmO7+Muge6GfE31M4m2v48HCHVYp8
X-Gm-Gg: ATEYQzwb9Lf8a46nv+syOv3KqqZr757+AaTVBei7msb4zqJ28O0s6k0MF6H6t0iHt3f
	VRQTWA+4cixffDkMHSx4d9rWCDrkgmR98VIuDTEdOlHXXOGbrWAGQnRdN+y+tDP9nt/CI6T4AKe
	UsyDYfB4hMqUDqk6ufoh0tbWKjjxYfO1dWR/Iu2ly2p30V6KanXCKkHvpWDdXu5p68RnrYLBJKf
	zEPgjL+doiofbLir4sZKrOmT3dVn0ZwoL+0Gj7VhmucZPLxlM+FVPRHxGvIjzeefOERjIsEbS9n
	HeHdBq7DcGH5ExG7XoTGt/djKIM6YIy7k55GlSb34LrOt6Zo2K8c4qQAmmLcWh9uRlsPtiraJEg
	pdmeE0FQJZPOHThW2KbEMimo9TRGHldagnWmXtC65+DNojFwUwfXxZwPZe2eY3rSib5i0O2KmJ2
	G7KkkGoIodR86bWA==
X-Received: by 2002:a5d:5c89:0:b0:435:f96f:3517 with SMTP id ffacd0b85a97d-4399de241bamr3355441f8f.3.1772207334184;
        Fri, 27 Feb 2026 07:48:54 -0800 (PST)
Received: from skbuf ([2a02:2f04:d608:3a00:ac95:d4c:390e:fb0a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4399c76c49fsm8168270f8f.38.2026.02.27.07.48.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 07:48:53 -0800 (PST)
Date: Fri, 27 Feb 2026 17:48:50 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"Paolo Abeni <pabeni@redhat.com>, David S. Miller" <davem@davemloft.net>,
	Andrew Lunn <andrew@lunn.ch>
Cc: "Russell King (Oracle)" <linux@armlinux.org.uk>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>,
	Neil Armstrong <neil.armstrong@linaro.org>, netdev@vger.kernel.org,
	Vinod Koul <vkoul@kernel.org>
Subject: Re: [PATCH RESEND2 net-next 0/8] net: stmmac: qcom-ethqos: further
 serdes reorganisation
Message-ID: <20260227154850.hcz4ftt3aah7robh@skbuf>
References: <aaDSJAc-x2-klvHJ@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aaDSJAc-x2-klvHJ@shell.armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260227_074856_503138_EF1F348D 
X-CRM114-Status: GOOD (  20.14  )
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

On Thu, Feb 26, 2026 at 11:07:16PM +0000, Russell King (Oracle) wrote:
> This is part 2 of the qcom-ethqos series, part 1 has now been merged.
> 
> This part of the series focuses on the generic PHY driver, but these
> changes have dependencies on the ethernet driver, hence why
> it will need to go via net-next. Furthermore, subsequent changes
> depend on these patches.
> 
> The underlying ideas here are:
> 
> - get rid of the driver using phy_set_speed() with SPEED_1000 and
>   SPEED_2500 which makes no sense for an ethernet SerDes due to the
>   PCS 8B10B data encoding, which inflates the data rate at the SerDes
>   compared to the MAC. This is replaced with phy_set_mode_ext().
> - allow phy_power_on() / phy_set_mode*() to be called in any order.
> 
> Mohd has tested this series, but it would be great to get acks/reviews
> from the generic PHY maintainers.
> 
>  .../ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c    | 31 +++--------
>  drivers/phy/qualcomm/phy-qcom-sgmii-eth.c          | 62 +++++++++++++++++-----
>  2 files changed, 57 insertions(+), 36 deletions(-)
> 
> -- 
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTP is here! 80Mbps down 10Mbps up. Decent connectivity at last!
> 

Reiterating Vinod's request to netdev maintainers from here, just
because it's easy to get lost in the multiple patch versions:
https://lore.kernel.org/netdev/aaGgWUpM2A5y11Wh@vaman/

Can we please get a tag to pull into linux-phy when this gets merged
in net-next? I'm also working on a patch set for phy-next which will
conflict with this series.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
