Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7A2BC6FD1C
	for <linux-phy@archiver.kernel.org>; Thu, 23 Mar 2023 18:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L3rusVw9WpuLlkHVkEIma7VBsN4eFEjMeAMbImp76jI=; b=nPXF1iNoxcKqpp
	neiIqF5X3sndHum3LbzyQTeRu7dT4HzTKHVepImtqvcVrSO6Im8eyRZll50nJaiN9jtZ6GMiuSyVf
	4ffEZGOoGXTCcU8k7PkHxgle1GdfhAUu1i6FXCCIW7g66L6yoWYIhtBA1QhQ11oWgzTS/ciC+80KW
	46BVN5h/fHshCqutajAHwPGoUzPilxwKVeR5eCH0+2B7AiA/x7VbdOFyB5IrrJbJfz9KPzMVEf++q
	MkneFnpASqdRl2p9vdSQMTKqQea7yQx/clWkJlj8s6s1gQV+HvyDqqVOSihn4OAnfjce/QbjjNB3f
	5o4FKL9Ounk2wXxT5b6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfPyn-002kio-0k;
	Thu, 23 Mar 2023 18:48:05 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfPyk-002kiA-2i;
	Thu, 23 Mar 2023 18:48:03 +0000
Received: by mail-wr1-x432.google.com with SMTP id d17so13203751wrb.11;
        Thu, 23 Mar 2023 11:47:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679597279;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q8FWNgQNPCC7D7xKGDpYpPeNQgBYQlnN/7rIkoHcrFk=;
        b=A3qhSSsUsD/lcphIMCN1rqn4spmYLqxOG8pKshDIEoxr8HVR/L+UzpNq5BOfMPIJlD
         B+5wR6AvIR2CuZIdGd/WKGkkXAscp6/88OntRjifaYmyNwSrb4gfjIYsp+wGqgcGbAig
         84j2hnha0Zr1scEZymEwQ5hztC7yaglGYdoV9scQ6HZJIQ2ZYWgrMoY4kXQax7P3S7BW
         a+jaAvwmRJDo6prhIBJYdpSCGEHUoS47IG7mjmzGoIX5t9YZ8nyk0FgpgVT/rcdZN7XR
         ssXBToTblWo9v1ALX+5Q685638iWGa+KYZf3azI0kGvK/Te7brV4PRbCVlHDE3R15THq
         +wxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679597279;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Q8FWNgQNPCC7D7xKGDpYpPeNQgBYQlnN/7rIkoHcrFk=;
        b=UlT+2mKNxKiWyD47T/1xe5B8CezQxy/FhZuFZjc/wsaNq5eaBCU1mU1JArac3y+gHH
         CVXmnBjV5EBQ9mA+rwXJQvmpXJqjLcQ1Q0G+cLzB3yB9Egk4vE+4sFJ0SmVUk9UrBQvy
         lZlInfc7mTehu0TBtUcEUTx4hiG0HwEVowDE8LMeJ5PX9oK/qcUCAgtht/0PcGtBckS/
         O/kb+gwR7rNtDUzoEjDufB5sFYFwaOoEDSJbV0NrxmENGY6lvGdKEEV3vMmWHQTfw1D9
         2ZyVm0buvnk3Fkd1f90M8S4O4dCFmOMnlFpoSDghuZ1iFBbcAen4PBXgptV8efZHSiy0
         yW0w==
X-Gm-Message-State: AAQBX9erW2RVEkUopLqe3dBmPeHY3bLGsmjbIx8EY4X4yLO4va/YI8RV
	l8dLjX7h/30s9OBE7fxoRSQ=
X-Google-Smtp-Source: AKy350aBvrFH/pBwHenW0d3ikefW7j6jxF4RZSJ9EpFvZkGt37FYUa2OgZABIV5NDF983nCS4QRhbQ==
X-Received: by 2002:a5d:6389:0:b0:2cf:e058:3ccc with SMTP id p9-20020a5d6389000000b002cfe0583cccmr119559wru.66.1679597278568;
        Thu, 23 Mar 2023 11:47:58 -0700 (PDT)
Received: from jernej-laptop.localnet (82-149-1-233.dynamic.telemach.net. [82.149.1.233])
        by smtp.gmail.com with ESMTPSA id p5-20020adfce05000000b002d64fcb362dsm11489891wrn.111.2023.03.23.11.47.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Mar 2023 11:47:57 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: vkoul@kernel.org, ye.xingchen@zte.com.cn
Cc: kishon@kernel.org, wens@csie.org, samuel@sholland.org,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: allwinner: Use dev_err_probe()
Date: Thu, 23 Mar 2023 19:47:56 +0100
Message-ID: <2672110.mvXUDI8C0e@jernej-laptop>
In-Reply-To: <202303231542125412125@zte.com.cn>
References: <202303231542125412125@zte.com.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_114802_897852_9FA6E3A8 
X-CRM114-Status: UNSURE (   5.55  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

RG5lIMSNZXRydGVrLCAyMy4gbWFyZWMgMjAyMyBvYiAwODo0MjoxMiBDRVQgamUgeWUueGluZ2No
ZW5AenRlLmNvbS5jbiAKbmFwaXNhbChhKToKPiBGcm9tOiBZZSBYaW5nY2hlbiA8eWUueGluZ2No
ZW5AenRlLmNvbS5jbj4KPiAKPiBSZXBsYWNlIHRoZSBvcGVuLWNvZGUgd2l0aCBkZXZfZXJyX3By
b2JlKCkgdG8gc2ltcGxpZnkgdGhlIGNvZGUuCj4gCj4gU2lnbmVkLW9mZi1ieTogWWUgWGluZ2No
ZW4gPHllLnhpbmdjaGVuQHp0ZS5jb20uY24+CgpBY2tlZC1ieTogSmVybmVqIFNrcmFiZWMgPGpl
cm5lai5za3JhYmVjQGdtYWlsLmNvbT4KCkJlc3QgcmVnYXJkcywKSmVybmVqCgoKCi0tIApsaW51
eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
