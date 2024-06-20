Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57A98C27C79
	for <linux-phy@archiver.kernel.org>; Thu, 20 Jun 2024 16:53:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/cNNU9k8MOoBld8i8Q9GmHsV6r7m33HfH9/mKfe0H3k=; b=2MIA0kstcaJd1d
	iNmzlsxsxB971ZGTvZc6O0VyymIGG6TX03bA66rngn2tns7aJGtXJtjhfTHP+4WGQDKfD5bg/xJ0B
	yxNyUKGZPrM04Ncg8fzJuG+rTBzAruZOGcQIm1Ge/92zW1qrrR/SVi6XycAq8wYCSZ8ApWp6FkeRX
	nioHjyEqqkiyIB73S0jAN0te5l1PwzIo91zVM/iPoxsxtAtl20IRLhkHXT8FDVxFYu34spA0BEqky
	CCahqcC2W1mOh23tQLz6dJivIscuSB2hV1r/s+ZCMlpSeADiJ2mhgB+V2k6ndvS8kRl3s9C3YwNur
	Ad4epsoZbFFpt9epTEkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKL2K-00000005x2v-0EL3;
	Thu, 20 Jun 2024 16:53:24 +0000
Received: from mail-pl1-x631.google.com ([2607:f8b0:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKL2G-00000005x26-0svJ;
	Thu, 20 Jun 2024 16:53:21 +0000
Received: by mail-pl1-x631.google.com with SMTP id d9443c01a7336-1f99e2dc8cdso1242635ad.0;
        Thu, 20 Jun 2024 09:53:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718902399; x=1719507199; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7AmTvR060R3Xb4pZV+tbl305NBdOBTN3BeShU8bb3iM=;
        b=VhdaamVvUir2Mx6A+/RLXYUavdSJe9klGRzPVd5k3rBnpNTc9FfBDcn5jt9cctrUao
         DghepS/QHPbFedhvWbIlM40WAPCtRAtDfJCDrS+NdmZk4zK83QVBhj0A4Aw2AwRWoJ9M
         2vh256MgZFr1O6vD7uZj22eiPjSAWZSoROQ5D2NabRoVmGrM+fDnA9NbWk61cBz57v1p
         mPfmxq3umvgqy0JMPDspdJBiW8dd7/o9k+iBcZtvqdcFJKYAvMSPuXOi9RZ65oi8z/Xo
         096sB9UNwp27nqpt6ONe2eR9OeIsqJtCyyr/7UfuVTUp6YFIS5La1ln55ST2CWaOAY20
         DuAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718902399; x=1719507199;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7AmTvR060R3Xb4pZV+tbl305NBdOBTN3BeShU8bb3iM=;
        b=UCapzUlu47x4Bd6aghvDMignvPJg3wC6NitWezCbqKe4/LapyRfkd9DxJLWcHdKF6C
         f6Iggj3eoQvb9H7EPI15bnrxDvs3yF5YATya0aPKG0/vjDMLaigd99OO5GeMtv9oSZa2
         7Y+K5Uw58U8UHArBYvKAW4U38p5QCWHkPZPIIuY0AYa2lNhmO3odjmQDQ8SCazrPWzzs
         VjWkPf3sowvbDJoSXHSO+CzW21QdVUFQ6YLl95UCDoYmxxNyhU/u9Te1tZRXLBdXUKbc
         9l+H/+GulAThyVyLAZ7VTuBsE218b0oCzOLJyEC7+z7gzygWk3DUWLWKF+g5QjrSMlzk
         Ws6g==
X-Forwarded-Encrypted: i=1; AJvYcCXAbvbO+q5fC1lbCmF0MFHhLF67BsxQl9/4GaHcwrWrWYbNBXsHWLfezeUPu2r8f0th4EnXuj4dsWfG7g8haYDn/dq0FejZnB+qeYazxmjgXPz88AyuQ2semVyYLX0lwcIUdjmVQD/EicKSGriNSSTxz9Vt
X-Gm-Message-State: AOJu0YwRzYDN87+81+MMyU3WC7I7ffzerzMifDRskGnJzi79Wvs1G/am
	X5/pskw3IY80jVev9+2Qlof8X+2/FKiRBOUqih+LFqMOf1IvOJYfHVjEa1pGc2nMCJArFXNfdI0
	qJS/HAzI+docds9SN2qaUUSqLgtA=
X-Google-Smtp-Source: AGHT+IF/WclI9nxVPYbvTRGt5Ozim4FmlJxWK0XFHHvagUIq2drNW2Tk+Lnvy0cKdMs9XBclyq0RBzh5sfTQdRGOXDg=
X-Received: by 2002:a05:6a20:a12b:b0:1b4:e10c:62bd with SMTP id
 adf61e73a8af0-1bcbb3fd1cdmr6155893637.2.1718902399386; Thu, 20 Jun 2024
 09:53:19 -0700 (PDT)
MIME-Version: 1.0
References: <1716962565-2084-1-git-send-email-hongxing.zhu@nxp.com>
 <1716962565-2084-3-git-send-email-hongxing.zhu@nxp.com> <2f15baba-68b5-4e99-bdb5-6d2e05b7688b@roeck-us.net>
In-Reply-To: <2f15baba-68b5-4e99-bdb5-6d2e05b7688b@roeck-us.net>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 20 Jun 2024 13:53:08 -0300
Message-ID: <CAOMZO5ApiFtRYB5gtzxQj53SLGu_64-J_owEt4MYzABM249qpw@mail.gmail.com>
Subject: Re: [PATCH v7 2/2] phy: freescale: imx8qm-hsio: Add i.MX8QM HSIO PHY
 driver support
To: Guenter Roeck <linux@roeck-us.net>
Cc: Richard Zhu <hongxing.zhu@nxp.com>, conor@kernel.org, vkoul@kernel.org, 
	kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	frank.li@nxp.com, conor+dt@kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, kernel@pengutronix.de, imx@lists.linux.dev
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240620_095320_375042_560D352A 
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

T24gVGh1LCBKdW4gMjAsIDIwMjQgYXQgMTozOeKAr1BNIEd1ZW50ZXIgUm9lY2sgPGxpbnV4QHJv
ZWNrLXVzLm5ldD4gd3JvdGU6Cgo+IEJ1aWxkaW5nIGFscGhhOmFsbG1vZGNvbmZpZyAuLi4gZmFp
bGVkCj4gLS0tLS0tLS0tLS0tLS0KPiBFcnJvciBsb2c6Cj4gZHJpdmVycy9waHkvZnJlZXNjYWxl
L3BoeS1mc2wtaW14OHFtLWhzaW8uYzogSW4gZnVuY3Rpb24gJ2lteF9oc2lvX3NldF9tb2RlJzoK
PiBkcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1pbXg4cW0taHNpby5jOjQ1OToxNTogZXJy
b3I6IGltcGxpY2l0IGRlY2xhcmF0aW9uIG9mIGZ1bmN0aW9uICdGSUVMRF9QUkVQJwoKTmF0aGFu
IHNlbnQgYSBmaXggZm9yIGl0IGFuZCBWaW5vZCBhcHBsaWVkOgoKaHR0cHM6Ly9sb3JlLmtlcm5l
bC5vcmcvbGludXgtcGh5LzE3MTg5MDE1MzE1Ni4yMTk3NDQuNDE0NDM1MjkwMzU5NTk2NDc3NC5i
NC10eUBrZXJuZWwub3JnLwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
