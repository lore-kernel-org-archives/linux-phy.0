Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA1FBC79F85
	for <linux-phy@archiver.kernel.org>; Sun,  6 Sep 2026 15:51:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pz8vUbKzeJ6wGncxXKqeGvUDiGMcZ4Mt+4d1PiRntsE=; b=roUeqj0+z6/p52
	h7MMjiCx/1tDttVfa7s0D2xQdRnRsckBjtFq/5G8Ne8K/GtXZ2n1j9ZvkDiQ0sG2wUD06pYIoOEuM
	TYCsWVXcwutHQ1yXPJKrKuPfPmUJKTkxWMVurmT8EmKu/mPsL8yF7TAgnUBfMA3p11c01VOVcQhWR
	kWDd7goM0hXGHbwRwNkoYK8xQgYEhLJrS6eOwWdCN0ZKMjustZWexcJIrQwbpheKxwCZtE4ECObOE
	GIaKOVnPXNixprwHikCEg4rA9hOz1piGDVY6FO8ZZH3ZcB6VACPEb7sJU4sL9OK9yes/Lcb2R/QWy
	jQH/xqsTESGptyXTJYVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3F9U-000000059iT-3CuO;
	Sun, 06 Sep 2026 15:51:29 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3F9S-000000059i4-34Yb
	for linux-phy@lists.infradead.org;
	Sun, 06 Sep 2026 15:51:28 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 686EXBcx1207013
	for <linux-phy@lists.infradead.org>; Sun, 6 Sep 2026 15:51:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WCNnlg4GyeLNFBgZB9Ozm8QTq3ZkWVLYSJhs0FHtgyo=; b=DLmEQD6Ii5g5CD3L
	FCtBjZ9lXnkhOq/YfgNIJf6rThoNoOq8496Ys2s/zcgDEbMM+yVBpkOke5DwMaCH
	RR07zWJd+EyUU5vW1b5yApfl3AuTr1B5Ylbj+jauQmBJMoe2vSLPf//JK1lQ2sLW
	58HyWmyfFkhKNxrRqafZZyW1GNgXU6HAkMU2NqezcGJEoYvrWwPs3k/ui7PoRLaE
	a9hGvrtLnLYVDnuMpNbgXDj5G0JWHWxkDVK48OTKhOOXYotCFKMNvoEkS8PMrfVA
	8u5+iu7zJjM1BzHCCuLc6J7i0wT4VIUSp+hXF1FFSBdLldtRWupyBVrYultfYd+H
	eyrtMA==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ggadhkpvv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 06 Sep 2026 15:51:25 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-398e1fafe17so4276005a91.0
        for <linux-phy@lists.infradead.org>; Sun, 06 Sep 2026 08:51:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788709884; x=1789314684; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=WCNnlg4GyeLNFBgZB9Ozm8QTq3ZkWVLYSJhs0FHtgyo=;
        b=RdKLccyqNH+pRdQr4rolsrOkoZKkwZ62bDaZnLr+6pV4gG4Q8wA8+6Vx1KzPfHFgOS
         iHvMtEIZ70c2zI4fmS8qWx3e57XNBpt5Q3IaQmLpxmjt90VCR3j8YcRX7WDKWw52MgRX
         G+DLPZf9JT2U/IpDY4AGqqLdHmjpPy5NJGf4EENdzWfLDhU1LpZxNATAfkzJ3E9DOzsl
         BeX+cSlDOxJk7CRbtJwLaGTYMnE6MlaqS3a17ghcjUfIYatYn8pSY7sU7VyISvFG+EI7
         IEYEbLgW/+JZah3ZXH4ngcUtNGthW0FCqXAndniDUwprXOgpn0Y9Mx77vNaL3JeOhW9p
         xWVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788709884; x=1789314684;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=WCNnlg4GyeLNFBgZB9Ozm8QTq3ZkWVLYSJhs0FHtgyo=;
        b=bn2plGjzoAbvFrhKfWiBDBSCJn0uoOTPNBDKy6GXIQ6UzhyZtKkt5Y7Cz+GMBK81a2
         gjoRNhAqxtMPkedFW5/UAopD02wGqAkhSo1X05++LC/7GhRCmW9DgJ6sPuRLS+HuWOJ9
         oyIMeqWRb7hnHc10N1bFEy2hlBxZwyiTCoPQIEcmW2sjWRKFO4BeKg5+iwsExO5heatM
         VYGhYB1TcTbCMK85TsYIEbZqMqvJIye/2xGBSJCOPqP/++QU/MKOHfOtM1bILkST9snP
         Qr3dnvAOmVw8SoIEq+L5UuyIixKRlOPY6pzchhBAuKBI+ZMvSav8yfzhQSzFemDMaXU4
         QYHw==
X-Forwarded-Encrypted: i=1; AKwUvBznqxj5lAPtGN28dtZgMgwux7Hr6FapM9Yom8bZKnwCFlhHGorQOpZXJF0Sr9iZL5xbt/lXMK6NJMU=@lists.infradead.org
X-Gm-Message-State: AFuF++mFL05qQMw7CatnLbDD3TfcwDwW0hX0A+4qKYwT2EQmKSh6at2B
	0UNve5rfr4oFG83yG+5uXRwFJyflxmwBvc0g7Ei7r8vId+ZZABEnHYyevE9DTOl5KVpvpoy+Je/
	MfgSLIojh/rUbFPLNLceBZUEWDFoFMDrDTkQqHVDpvf9j2ux8H5IEEQzk2dm3Oh1lbTvV
X-Gm-Gg: AYBFou2Mx5eSck1on7Fk2M0qYCQWZ9xlG/vdhcfu+ckOjRH37AFXCMtmh/8LbikFk7F
	M2+Km8moUSAV9AHdWl08BgdXmELV6COXyJlvZUhaz2V5WdWwuc2xe+aBpomaI6OPD0y9GehmNLV
	MOT3g3i/WRPzmMN8rNS5FCvUMx7jSAxgKPZBRp/bbIzT0/TzCRFMnzWh/jP6c3xKpaENVUzntK1
	YmjnpyFkIEeAQ1QW5GiKsFotiP7iNyu2DS7pnF2iCtp907FeGXiXxkdEN+0YbD5er2M7h550OoI
	OS854rHUVwzPV+GKBqkGNDlKSui5c1lUEm1UA+wCbsWb+d9xQCW4k4chpS7kfZbwa2HJOJTZpKr
	BmqLQkJwKkVzsSAZWJCUiSaewwC36
X-Received: by 2002:a17:90b:4fca:b0:38e:5b59:c2ff with SMTP id 98e67ed59e1d1-39b260dd278mr27450029a91.3.1788709884242;
        Sun, 06 Sep 2026 08:51:24 -0700 (PDT)
X-Received: by 2002:a17:90b:4fca:b0:38e:5b59:c2ff with SMTP id 98e67ed59e1d1-39b260dd278mr27449993a91.3.1788709883853;
        Sun, 06 Sep 2026 08:51:23 -0700 (PDT)
Received: from [192.168.1.11] ([103.211.19.41])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-143243bfbe3sm19755723c88.11.2026.09.06.08.51.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Sep 2026 08:51:23 -0700 (PDT)
Message-ID: <3a2f535c-7ccb-4b50-a6fc-f73ec02d4acf@oss.qualcomm.com>
Date: Sun, 6 Sep 2026 21:21:17 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v17 0/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Suresh Vankadara <svankada@qti.qualcomm.com>,
        Vikram Sharma <vikram.sharma@oss.qualcomm.com>
Cc: Bryan O'Donoghue <bod@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260903-x1e-csi2-phy-v17-0-26606fa9a039@linaro.org>
Content-Language: en-US
From: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
In-Reply-To: <20260903-x1e-csi2-phy-v17-0-26606fa9a039@linaro.org>
X-Proofpoint-ORIG-GUID: 4247Pj1UjbM4TyxqSxHgFAPO1VyGDsIq
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTA2MDE3NiBTYWx0ZWRfX7uPfbeMyXWYV
 uFZMIpdJ9Qh14o4LHjO9Yq7nxMW4IN+Ovb2fK4ZPDgg4O6UTTFQTfOCK+yQQ3CToT+PNKn2MX7Y
 VyUMLIIcY5M/JQVvLVbtndFdNp/SUf86lW9GZri767FPjCrwnesCTJEdIzXsWIUvpV/Nv/OuTPB
 UFpvxFnk1Yqexv4DJMRFX3rs0R5nQyi1buyj+LmzrRYMsQAsxhKkgPvAyBfpyCkPoE2BfYapZAA
 w7wU97Pyd0cBpVHKyI5jCNZPhtRoSKcyA7APxF2A5ytVpXgaujGwTEgmu9Mf6uoDoKuNUPT6/nV
 2OVgOFBbJj6USRhDOiA/v8qdIpkYtVUSWYKzRjCxt5Ms4vC/DyzqAlE7BNSebsGk5D1NaSvBs8d
 Io5/KUU1pCgN29H62ABP0cwb6UL6tI8H2Ni5G591NG0Rh9Vrt4/drhr2XWXdkJ+4pDX9xoizVu5
 Na+g11PB435GKbJEfnQ==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTA2MDE3NiBTYWx0ZWRfX3MNpioJq4Tvf
 HUgxVys6PA++mJ+NPBcyb+eA+sFw9OXItY8UKw60nB2yi50HmeSHxly5/VDQhl9CDeUM3Ri3nu1
 D3q3H2KCNzoiVffh9uRmaMijrYdSfWc=
X-Authority-Analysis: v=2.4 cv=OceoyBTY c=1 sm=1 tr=0 ts=6a9d8bfd cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=HcLy/BXbbKFjgnJyaMb84Q==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=0VQvOID68a5ICqMF5fEA:9 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: 4247Pj1UjbM4TyxqSxHgFAPO1VyGDsIq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-06_01,2026-09-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 priorityscore=1501 suspectscore=0 phishscore=0
 malwarescore=0 impostorscore=0 adultscore=0 spamscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2609060176
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260906_085126_894323_DB09CB72 
X-CRM114-Status: UNSURE (   9.73  )
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



On 04-09-2026 02:14, Bryan O'Donoghue wrote:
> I've retained the callback indirections give us scope to add in another type of
> future PHY including potentially adding in the 2PH later on.
> 
> This driver is tested and working on x1e/Hamoa and has been tested as not
> breaking sc8280xp/Makena and sm8250/Kona.
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

For the series:
Tested-by: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com> # Glymur CRD

---
Regards,
Nihal Kumar Gupta

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
