Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 650CEFEFB5E
	for <linux-phy@archiver.kernel.org>; Fri, 27 Feb 2026 15:37:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d16115FH2NNU9NpNhLpuP0fBewBlK98oVO82MbmyXxs=; b=0/inLRcnsB6UqC
	KirTcgNTLq9L8tfJHV+FDbo2Jt+Nb+6j5GrvH2iXExRvfXcgIQUZJSK+U99j8vAtNR4JQslgyvk+z
	BOkqyB/EvDWCjTR7opXUOuUYITbyIbbm96uuDZOzfeT9t4mz4n1FYvtcJ7+02oMsTRv8NFDx4vo40
	kwn8s5Ko48EQKG3IyuGZ+kwgz9niSj1dpdvaWvLdaim8BUbdu86KQKDHRQKaqTdxi4JOChSDT4XQ6
	bRzYfwgu+gGKFdaZ3+S4aIfu22Nrm3ZkTDA1OAHok0XiumYCmiXZZQwC3WYe8CFYX6CtHa3P5ufIf
	TMkY3ryXGOhT3nm9LYSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvzuW-00000008fIq-475y;
	Fri, 27 Feb 2026 15:37:49 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvzuU-00000008fHQ-2435
	for linux-phy@lists.infradead.org;
	Fri, 27 Feb 2026 15:37:47 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-4830b67aa6bso2705615e9.0
        for <linux-phy@lists.infradead.org>; Fri, 27 Feb 2026 07:37:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772206664; x=1772811464; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=PmXbxBtIqJncar8DB1sW/Qw37OMyoAkSD4eIty5kISQ=;
        b=aNCsWxdzdO5q8ORiz0xkR+EuUul622UPxqyvGCb5RkB8N1X6E+f7sXLYzbf1Fo5mY6
         HOclbfNFBp/eiFWjUUP0BejxtxYtWUkykCyQGqLQE7YuAaDHoY0gs4fsJkue86YVDXhP
         54ZuMZbNI+068xQONzcXFk+YKPReQlAajn7ciYTl1n9NKXALZq5z3s6XBZzSNqVxL733
         EyD4JWIu3hwHRbfuTwqzORyrwe9gPxzxQYZoBVIty0CLfLPOxeAGXO3qNjHoVUy659/p
         kkudnrzV78LCnlj7CYt+p5KsvTuB8/ZwqMQtGwQ9n9UGak+h86VNu9XkMFSS+KtcoPNE
         AE6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772206665; x=1772811465;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PmXbxBtIqJncar8DB1sW/Qw37OMyoAkSD4eIty5kISQ=;
        b=uWh+TIFJ7A0OqZNRHvq2TLN0thTwqu/uo7xsHDx1MGTueOum6q5T+eu0XR40iMCaZh
         UCjO9YrdOemNiB8HKvL2aoq9fcPGqyayCVUi0JMp9betk7v8yF6KvboFyi1K5wXjNjpL
         oYWYb7vT4/O4jckU4pOaRvl+6jeQZ0KUb8nnBZA2EwFHZXL34jnfylRL/+q9dYz2UAxa
         MvasbiDr/Rog1MzPzWHdXUxZxOX5s4eP5XNAMQHfBRYi/ytS5k4LQ3iWuMGOk/wtJqki
         JLevf6JP5MqUDefeBc+dTFZAnREpw7sI+d9MyxG48tK67GTnWESXlAEvXXSm+FJc6JH4
         owdA==
X-Forwarded-Encrypted: i=1; AJvYcCXqHTwZBacgeT9oNQiRl0DH+wonMFuLQuDtZvtssxjOLy/NMRLumH1lNueApibUCwDNSKSP9sp+0X8=@lists.infradead.org
X-Gm-Message-State: AOJu0YwzBopzgrpy6yyHgGOoQCABnCQRulLDml68dWVqN+th7ksdEi1w
	/3JPEIrRgIMkvsuY4VY7j1M089oalG3Il68AWxyykkS3elTwNKoMSiJ+
X-Gm-Gg: ATEYQzzEQWP2CJT8VLY2aScdtCWRLqi5myaHGKPW9nVdrpP8pGFsr/issIJoUUD3ebs
	Y7jyvJ1sh+ITJ4FoavwN4GqtdE/wjVGpaeZZu4lGNnLz3xlms4TCRs3N9GyGqWlwK1dYM5bOlof
	aW/LJqnOuaV5QY6pVAojEijgE+QzZ0LgfIEbg2+zdNOqnFfBxcKbUbfFlfZNLLcUANeIqfVCidN
	ioLZguxSJZ4RgTNTq2mNe4gGfID9sNFsdXkOJxkyIzy/Rz8iQvAUhzvpdwE0Ru3TK5IMz0Jneky
	7PorQcfQxJbsu2zQifmbrgwiAWbO/vd4tzR33g+V7rw4Xz5ShFEUU7E1adb8aMOounGBNdrsmQr
	nVlSpzhV2+La1/Sy8iLaXolUcpUgx6CalmVYI2dU1gmcrq2wtPGLf3Kse4bEubUpmyCqr6l+fbE
	xQlPzBV9sN6njFGw==
X-Received: by 2002:a05:600c:444f:b0:477:a6f1:499d with SMTP id 5b1f17b1804b1-483c9c1bbdcmr28085255e9.3.1772206664464;
        Fri, 27 Feb 2026 07:37:44 -0800 (PST)
Received: from skbuf ([2a02:2f04:d608:3a00:ac95:d4c:390e:fb0a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bfb776a3sm84332245e9.7.2026.02.27.07.37.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 07:37:43 -0800 (PST)
Date: Fri, 27 Feb 2026 17:37:41 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>
Cc: Andrew Lunn <andrew@lunn.ch>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>,
	Neil Armstrong <neil.armstrong@linaro.org>, netdev@vger.kernel.org,
	Paolo Abeni <pabeni@redhat.com>, Vinod Koul <vkoul@kernel.org>
Subject: Re: [PATCH RESEND2 net-next 7/8] phy: qcom-sgmii-eth: relax order of
 .power_on() vs .set_mode*()
Message-ID: <20260227153741.e462gzmv7t62r5uo@skbuf>
References: <aaDSJAc-x2-klvHJ@shell.armlinux.org.uk>
 <E1vvkUS-0000000AuPh-3Il7@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E1vvkUS-0000000AuPh-3Il7@rmk-PC.armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260227_073746_541169_25878D5F 
X-CRM114-Status: UNSURE (   7.55  )
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

On Thu, Feb 26, 2026 at 11:09:52PM +0000, Russell King (Oracle) wrote:
> Allow any order of the .power_on() and .set_mode*() methods as per the
> recent discussion. This means phy_power_on() with this SerDes will now
> restore the previous setup without requiring a subsequent
> phy_set_mode*() call.
> 
> Tested-by: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
> Signed-off-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>
> ---

Reviewed-by: Vladimir Oltean <vladimir.oltean@nxp.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
