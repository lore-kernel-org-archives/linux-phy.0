Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09D0AC8303F
	for <linux-phy@archiver.kernel.org>; Fri, 29 Aug 2025 07:56:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CTTm5BNzy7hZ4WNR65dwIGeJgQbrdI5RqHhcWYp3lJM=; b=VeEeM8Cdo2nyJ/
	CfUzA5A1YNLiQGjIF+NBzUf1Q6egTXlK5n5zseyCdTPsNZqN4bLCfoqVoY6vorMSq/zrVbsmRcJVe
	4Q5XL4CENCFgS8IFgTawtXySU+KFny4vBkCY22UQHMPHdbLkQtt0Bmx6+VIGAL8jlrbPxUo7EDakl
	gGZHo/G2Afl3o6xHNf8wqne6ywTCveY5uNNH73zDag2g+O1oPJ4UZUYlwm7E44vTo5vsTjuj3zqCn
	kAahzJz5c5g3aZ/+Tozo6a3dv04SqN7p+uD9GvRAN/sxx/kb7bhHOhde+ho96XewLMjJZFv13SGnv
	D+c+Jfjww2LoHyQF8fPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urtyX-00000004qpo-32h0;
	Fri, 29 Aug 2025 07:56:45 +0000
Received: from mout.gmx.net ([212.227.17.20])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urtiV-00000004nUq-0Vy2
	for linux-phy@lists.infradead.org;
	Fri, 29 Aug 2025 07:40:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1756453188; x=1757057988;
	i=markus.stockhausen@gmx.de;
	bh=2V+pSX0atOOcUvE3qFexqL5Jd8acMxv48XYqDsuuLX4=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:Message-ID:
	 MIME-Version:Content-Type:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=QPMkmzaBMXz4PfO3CyZfmbmX6aERJl9IsO5Vg7cSwUnh+xPoupe9VAES5Svdstlo
	 43bl7wRRJJxISHxxEAvJT7oikywaPkqklegKCPORyg8aem0kuBzu6Aa8YSWVAFcg8
	 POrNx9EyEW7dvRBDndbTpA6gwVZ9+/Yk+kpZcoOCOiqllKtCVXM+3l0cRmJlBVPDk
	 sx87Q68QmOgnr0FBZyLjDeOpDoRbrhadSbSvQCAPwmbD1MMVsfZ4yWy9IyVXK2eyC
	 xjfQ06BkLsLgSpEJ5rvMykLdD9FctFTH6Q7lU2zzeAGxm/+/3hOqVSspuLAuS6ETv
	 P+7REVHcgeSPUC42sw==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from colnote55 ([94.31.70.55]) by mail.gmx.net (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MeU4y-1uJwTH1Nbw-00n9JX; Fri, 29
 Aug 2025 09:39:47 +0200
From: <markus.stockhausen@gmx.de>
To: <rmk+kernel@armlinux.org.uk>
Cc: <linux-phy@lists.infradead.org>,
	<jan@3e8.eu>,
	"'Chris Packham'" <chris.packham@alliedtelesis.co.nz>
Subject: c22/c45 descision in phy_restart_aneg()
Date: Fri, 29 Aug 2025 09:39:46 +0200
Message-ID: <029301dc18b8$19059e80$4b10db80$@gmx.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Content-Language: de
Thread-Index: AdwYtkhAab7cD5OMTEqRXb1og/6gKg==
X-Provags-ID: V03:K1:JbxFGg4jOA6ypHWidMFgbNkki7MeRIuPI6KUQC/vqeK2C2XF6Al
 JFgob8b7qsqjRuhQ6F+lcg3EUfBlgeEwbKyP7VOBja3zp6I1PXm6nIXn111qKtESN0jQHdP
 YYzvKCfPWKjkxcRzYFap23oloLZHb/x5gh/3mfnW5hQ5iuagpqaX2n6BLHDsk4z4o2TPHHw
 LlzfZZfjEuYaaJ1NMdPBg==
UI-OutboundReport: notjunk:1;M01:P0:GDh3Cz112fk=;tGWnZm+JAh7I6AKMNiGj1zbs1C4 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 /THNM6AOlGErJegV/aI
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250829_004011_470545_61490C22 
X-CRM114-Status: UNSURE (   6.89  )
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

Hi Russel,

once again some interesting finding from the limitations in the Realtek 
mdio driver. Remember it can only run in c22 or in c45. This time in
autonegotiation restart.

int phy_restart_aneg(struct phy_device *phydev)
{
  int ret;

  if (phydev->is_c45 && !(phydev->c45_ids.devices_in_package & BIT(0)))
    ret = genphy_c45_restart_aneg(phydev);
  else
    ret = genphy_restart_aneg(phydev);

  return ret;
}

I assume BIT(0) means MDIO_DEVS_C22PRESENT. This basically 
uses c22 for c45 PHYs if c22 presence is detected. So in our case 
it fails as soon as the bus has been switched to c45. Of course 
stupid but it is as it is. I see two options to fix the issue.

- Mask the c22 presence in the bus for all PHYs if running in c45
- Or drop the c22 condition check in above function

Any advise?

Thanks in advance.

Markus


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
