Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76AE1CA9ED0
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 20:15:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sEDXZ+jvkq3bFcbNXR2nZaAk89pd6vP8Mf6PEZkpU9I=; b=22GmbCQQ9ksotu
	9pC7PiJUeW9GG2uEGRXrr3q83M7iEjOUfNVLsO1MSPTwPh1eTJGXn3u2x2RMEgwyeo3da3PJ+8KOB
	DDUOoFQ22GW30KNWdwfNIqyBM8dgyEH6QRk866YIkteBIPFPgCTq7IYhAR8FQzeo44kF/6XFremmi
	20P5T1x5X0hK7NpmC2a1O4/ocYrSeh8WMK+Yjf0gNf71bBXSwh21J0OEA5ZgQ1IZAIRkfmXWgv8rO
	j6h8xrI+FqsV9nq7AhxCzXdCB2wJWHOyVXugqcOpYJVGB0LvI6uZqYiJe7/B3r9unkulOGh06qn+k
	Q34Aq6fF3jnSf1sXT5TA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGMQL-0000000BS46-464T;
	Mon, 12 Oct 2026 20:15:05 +0000
Received: from mail-ej2-x09.google.com ([2a00:1450:4864:34::9])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGMQJ-0000000BS2Z-2YOt
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 20:15:04 +0000
Received: by mail-ej2-x09.google.com with SMTP id a640c23a62f3a-c2e36c7fc5dso120805166b.0
        for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 13:15:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1791836101; cv=none;
        d=google.com; s=arc-20260327;
        b=oUW7vHSqMXvQZJLqE6xIpBGDgSSpKv/OfhrZBMkeI11vh8xjBy1XRwyUBNWMHeCVC/
         e8Qg1ACLuOHar6z6FhNJnhCp+7+LWljt2QoL5tMmwznTN/zKsyDVIbxsUGQTEDS49VT8
         +UWJwkQsOektF3sJlUq00dtZfj/DeVqH6z6KQXfhvII8zgatChtqub0vLfHtJSohBnEX
         D2Kna6aP7ZLcFAaQ/LdNm2/tFamea+xjSJysDZSWWdSqXnD0OZe85LjzW1hNGrLKKuut
         Yk9tErZJv2LQx6C9//xvU/CFhvTpiXfZjNs1gUdzrVV1k0Ar6HSGjVzT37OrXEZPxg4b
         n3pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=HS3YiJJwuBFYmXT0xY3bh6dZ6ZY38Ujwfz/IeJXETc0=;
        fh=uJDptu1igLRwwPyy53WfSd8wXh/JwdZMdKVBN95oBKI=;
        b=KyBFE+aNFIUPKR8CYPYkt+nUBh9zhsyUnP9y8bDqy81wOSrW24jGfsTPMGw1L+XKsZ
         EMYnO5JhZhxZajKWcZgvXdNfAR/6OC0vDEN/VOdch0r/M/cteRdeWJEO6+UgbSVJJ3bR
         oNDGD4golR/ov9DJmb3kMcdQYmJbnJry3XosLYEeHyQR/eR2cRVMsFkNZX6Eveda4pyR
         iKK21RnfBjS7cIjjHBFMc4NCLL1WpyZzsizGDjXw7HLc8Gt3j2oeN4Q9bXIpKArjPo+N
         O2y0UCYmo10T3R0sXWPL7oU3nD4cA/zZyfBhl2l05Qd9Um6P6fwOElJHeazllAZpI8QF
         dMjQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791836101; x=1792440901; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=HS3YiJJwuBFYmXT0xY3bh6dZ6ZY38Ujwfz/IeJXETc0=;
        b=QoXd5cUt/UCkl4kLksu/rlF81HaiG+MMMIpRb9zsDTvJ0jmiMJHnppOiZsUxEaG1r2
         HFZMxRMP7MEraoDk4Aw6FHai8Pr7szsj1vdAeTd7yUOiHrNfAIMgUBvMQ3baR+EyjX24
         NPwHnvdZe/N0CQIRGyiqVwqT06z+q86ucvu5ariJGH7fMv6iW/REkAzUpRzG6l2O+ttd
         d2ib416+SSRnfpaxhJQ+vYWc5h7DQGjO8ZEV/9xhNQUx6F0e/+gFatGQ9wQNK/CyaJke
         ng/GrAITQViEE99tGM5j7METo9FAZM28jKwW/UKiInSRn5JSo6GtKIZuaKHg0sZA8kVB
         lqRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791836101; x=1792440901;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=HS3YiJJwuBFYmXT0xY3bh6dZ6ZY38Ujwfz/IeJXETc0=;
        b=plGEHRe7pZ+NAt73Sh9zjW6eiAPMgtQy+CGykq11UuPwSgwf/fTAYrIEMG2WdaJl/K
         4Mr+8QDRGAbUBrjX6+1CsHqOwmtARGRNuE8APjE5N6lQq9R98Fpi24RhZflrTvjlbCy2
         spJNLwUVehv5zTaBgovE/MLoN7I6nzGjjHTfA3qjSm51F/dw71SK8XH1t+BK5k6HWO9m
         vw0/FPCDZJ/SZWFMoKXSShoSovAHJfHaPoxNmRz+JbIxDxZgvLy9NKXjQqCBNtCPhbv5
         Wm9eij3H5MKqm5rWAJS4BE2nsBDQNYdCB3HpDsIboYZjfy6qHpQ+UEkII8bArW7hzWjG
         WMpA==
X-Forwarded-Encrypted: i=1; AKwUvBx4H6IsWhQLtvR0SU2XTrgklR4up3sc+YRusb8h6M+GIx1c913hDTNx1Lk2YXAGb+GBn1UXcCx+zlc=@lists.infradead.org
X-Gm-Message-State: AFq9FYLzc5UbEWIxeb5CpDDKTsJMFzD6Vgm31IQ0UgBf+iK6AAj/x7a7
	ZvtxyalyM0/Ez9echVruqgI1rw6Xf/BP/cT2pwpL3kCk4kX32jifska8GVStCurEfunJzcrVXlh
	0gVxif4Z4weBCKdZDwCNZjLqJqYdGEBc=
X-Gm-Gg: AYBFou1mcSrTIYV3TtE8SIzBzHP6xfTrmKomAPyRQERVPQ0KW4epJErOjr4VSv1HEAF
	Lwi8OGIF5TGggjm0g05tbqHpQyIjl/BAp4iWxLyCsyHMwm8PI6Iw7vfY6majNbHrJbAZoTNJRsO
	WKEtSCLGtbiRw1ozF+f1DQrNFHeJQUmnUCU4Ve8Kt1LVrri8S01p6N1htPiuXdEO9JBmpKdL2C9
	nmIlFTDjhOTRV1E40z83T/CMvgawlOh6TISDJA61Qpgf59PKo7DfbYQet1Ds5IPZM38YpljKJdz
	jpI6g1mqKhyZM3wCHlKaOIOGpOHAeuYSBHNjaU0nWFH9/oilAUVuroXg4EE=
X-Received: by 2002:a17:907:9712:b0:c2e:808a:f781 with SMTP id
 a640c23a62f3a-c31a9f8bc7cmr977286166b.34.1791836101394; Mon, 12 Oct 2026
 13:15:01 -0700 (PDT)
MIME-Version: 1.0
References: <20261006162807.2843858-1-coiaprant@gmail.com> <20261006162807.2843858-3-coiaprant@gmail.com>
 <ac2a4e80-6d35-457a-bdc5-ee8511198bec@rock-chips.com> <CALj3r0gQ_U2ZUJkRgF4NdB1Gd3A8ZT3T6qjLhwGZPg=VUXLsrQ@mail.gmail.com>
In-Reply-To: <CALj3r0gQ_U2ZUJkRgF4NdB1Gd3A8ZT3T6qjLhwGZPg=VUXLsrQ@mail.gmail.com>
From: Coia Prant <coiaprant@gmail.com>
Date: Tue, 13 Oct 2026 04:14:52 +0800
X-Gm-Features: AclHuK9DIbMdxghdp8dVnDg3M3UkCfAC1pjnUxZw0sP50Y9CDUKz7Qi3PzTsHZE
Message-ID: <CALj3r0hSyVpn4Upbun4DOk5hdOH+fzEFG2E3LpfvS2YUXH8twA@mail.gmail.com>
Subject: Re: [PATCH v13 2/2] phy: rockchip: naneng-combphy: add SGMII MAC
 selection for RK3568
To: Vinod Koul <vkoul@kernel.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261012_131503_704947_BB0A2BF4 
X-CRM114-Status: UNSURE (   6.69  )
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

Hi Vinod,

Gentle ping on this series. It was sent on Oct 6 and carries Conor's
Acked-by on the binding.

Is there anything you'd like changed, or is it just queued?

Thanks,
Coia

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
