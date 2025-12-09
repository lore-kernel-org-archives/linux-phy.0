Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D38B4D3B9AA
	for <linux-phy@archiver.kernel.org>; Tue,  9 Dec 2025 23:19:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xv9aKXvFX7OVdhuPoZp4AXjBef7kP2cSfC3iqjS2+GM=; b=iR3XnD5eGEcUY/
	K444mogiZOCtah5CIGuOQ2+HpRQvWuQzC3NLwWzdlxVeJiJcc7S5bPz7rTfhDvIHAO5cDXpZVT6hO
	e2m9mmzwo0BYW6WBhv3HykeAAr0vgNi4fSQVCNy7O+/uvaISGpxXg1Ail0ZKsJzBnZEooOJChGmTj
	5ZVCGxcI1SdaYbzzZwTAt54njzibC48oIVCLgNmNvX3PG5MEsYJ6jyuVJrKkZqVc1ZJiEj0YQGWyW
	7EZd7sTBzCIHEE7l+EdHmfEIyQXUBzPATX0BsEw7gE85eDZ14Is/ib1YyFS+SbnGuVzx/FVwaXkpT
	fYiq0KHJUBsNh6xtlFmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vT6zB-0000000EuB1-2Ne7;
	Tue, 09 Dec 2025 23:19:13 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vT6z9-0000000EuAg-03RG
	for linux-phy@lists.infradead.org;
	Tue, 09 Dec 2025 23:19:12 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B9NIV3A901161
	for <linux-phy@lists.infradead.org>; Tue, 9 Dec 2025 23:19:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=33eYtDWErrEVXrhkyt6CXsRk
	TooydK0b0le8aFIwTeA=; b=M/zN2Ju3ZBgk6SyXrtEzrWmXwByUObX6Q4GpRgK0
	O/tO/cQ23/uNjtBdufHgqy7cKVf3pqHULolbFnC/wiwYwmWcX9JFyTFtcXCikAys
	Pg9eM0UKSpwGVfBPSc43Q7n4Xcb+Z87YIOFe3LPs1HUeOfGFYSG6H+KyllD1+kjR
	UHxZ1YKy69gWObYjaHDLeOxm/HjSaq2Vr+uZv9g9Ift7LeCVz2eJyslC/tA0nLQT
	aqIKwhbtmwQ9jW1in0vtoq+S2HzmSM7W5HS3ua6cp6b0rTKc8/3tqTQEBhgEk0y7
	QLM/9uMBgfULAz3zFFBhk/MafIt01k25Jp29P2CkWrZfhw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4axrhm8vgd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 09 Dec 2025 23:19:09 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8b2dbd36752so1236450885a.0
        for <linux-phy@lists.infradead.org>; Tue, 09 Dec 2025 15:19:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765322348; x=1765927148; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=33eYtDWErrEVXrhkyt6CXsRkTooydK0b0le8aFIwTeA=;
        b=ZUIg4ooMneSvUXUH3jEPom2yzBUk4zdjRLH3Gcx486F5ZjIutt5t7qE6AbVFVFUMjz
         DCbevwge1mBGgXrgpB4wB0tEJVlDZ4J2F0SvMle3r4qSStdg5Py1/9cF52RgCCbFsOBH
         ILs4HU52QtkMb6n0d/JsUVKt7slwbMHeIgEdRk9UdlD5xysUYzdk+rdW4sZ5OOaZ5oeP
         ChYG19j7P/bni1TNviS4+DLImB92KItwjUwBQWAyXNCYjrpOijx2osb4MY7GOUE/jOMh
         TyitiWVdmL5ulNdd+gb48aPL87yd8iWEDrXIBvHTi76nCKxrSSiEFJDc0hnY++eELAF1
         oPlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765322348; x=1765927148;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=33eYtDWErrEVXrhkyt6CXsRkTooydK0b0le8aFIwTeA=;
        b=cfT56MwYcxSr6m7mCGJ+qKFDbICmuyiiUYxgGAN4zosP/R8MARMqIf2LVDzLuz5O3+
         dn2TsoM9AmJzfKAaL2Hpel8H3t1bmxy2O+Dnwr24Xark19TPXlJgG5eYJPkr7wfIjHM6
         Xb47DB/q0qrkBCsGrGNJ0um/cS+Kpd4NGZLUG02V7SEn9/uPGo1fzMb8VymJgZImOjdu
         JOD3QC6u5QB7hsAc+psAKAaH1rX6JlHhy+o8WSFSvjSQvVIRV/JHRHDZ83Z+mvzoVXHk
         owoViL21Q35VjrikqZTDR0xPKp2hCjvg31sHaGZUyTcIn5W/BQhZNJDlk1bezdGhlUUE
         Ngzw==
X-Forwarded-Encrypted: i=1; AJvYcCXHAzRlQ+gdtjfV2GBevEuEZU3a24GKbByaN2rK+aNY7kuJWtcMBvF6Do1qF0bLbT+2Wxb2MOSZ8VA=@lists.infradead.org
X-Gm-Message-State: AOJu0YxcTRBsvOFcaw5DjQYXlNJO/YQ6IBKI5QtGKt2Ajsov8oyNC+TP
	shXnQQ21vrWSJIfSqWp0A/1mjR7UF2C2WuGGuqozty8OFF50CNyEgc1Mm2WVYFLA/tsRVM8DELL
	oWiydpwFU8+pTVoEKZDvUxp3bJY5H3lOHOKiCl+JeSPiBF02XecmWq06qIIwkGnKTo7+R
X-Gm-Gg: ASbGncsceVimNsMPMW9OUJHlMYahjrhOu877hZcaIcKpkelO+ol1gLyjg/pmHpr7Yz1
	4d7J2LINFm1mJD8sl84NV3Z3JDpFEHG8m6hsyLzh8R5H43g0z5PI/A/WaZIz1YtaPuhJ8VYspEX
	6wlQfCOt6uB/xZgE7xL3JlcrbhTtaJnbxsZey0JYqji/91fuyzJkVXuoBuVIJoGIjvgySxCHuwh
	Z+KguWCOo57PWatxghRsDKrjroD2YxNFHg0VuJ8ybnOhiYUJcCmJcp4TAqo+X9qCKqmrqL6khdK
	/IpKm1a9UOacYLZ9SIMp6lUXsynVdM2bYQnBYQZjJESRClDYLyrn8nCri3Ebl8e4ceyRVS8/qLj
	hMaa/8xLdE8rgvVgQ0j8rtOZQjsfBd3YQ6Oe4fAaEAWUwhIhMCGV32qIIASFJ1R8MWaKht+ruM4
	TUbiwM5OSNOqYqJFA1/1jv7M8=
X-Received: by 2002:a05:622a:4d0a:b0:4ed:ee58:215 with SMTP id d75a77b69052e-4f1b1a0a12fmr6821231cf.35.1765322348500;
        Tue, 09 Dec 2025 15:19:08 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGz/HvWIDVVxjbHP2UzZinCSPKvsMUeE9RGETWdtMLYmXGOBSsrf3hH3HNvZYoC6/2bLvvQnA==
X-Received: by 2002:a05:622a:4d0a:b0:4ed:ee58:215 with SMTP id d75a77b69052e-4f1b1a0a12fmr6820891cf.35.1765322348080;
        Tue, 09 Dec 2025 15:19:08 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-597d7c2e4afsm5639304e87.95.2025.12.09.15.19.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Dec 2025 15:19:07 -0800 (PST)
Date: Wed, 10 Dec 2025 01:19:05 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Cc: krzk+dt@kernel.org, abel.vesa@linaro.org, conor+dt@kernel.org,
        vkoul@kernel.org, robh@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v8 8/9] phy: qualcomm: qmp-combo: Update QMP PHY with
 Glymur settings
Message-ID: <4f3og44prqjjxsiy5lwnxam3ikqylvmk3m2ofsxoa5byczhs56@3uvxjtobddxf>
References: <20251209-linux-next-12825-v8-0-42133596bda0@oss.qualcomm.com>
 <20251209-linux-next-12825-v8-8-42133596bda0@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251209-linux-next-12825-v8-8-42133596bda0@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=d7X4CBjE c=1 sm=1 tr=0 ts=6938ae6d cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=gzIeawRUdsEZb0YUvHYA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA5MDE4MyBTYWx0ZWRfX+p5Ld7CQbCCB
 M6MFu5KNpKF9sDsIMgeNS2V+KilQ+fatLo1ANzKJwNv24xN6t6O8ta7j2DLuqWrm+EtzvAc8TH9
 d6PfCmkLGoX1KD9EAw2y0ZK+UIYvQs/T6deUwA8q4sZ4MBZyE+0qmg+nqpQePqCcl8Ja4wkSTSx
 us8rvzMXva+ddyNRYZl5mIZ48iebuA5qDBOOoHK1MnLgPdoJ9pF6BmPkmzlqU3iHFzQ9dbpjVha
 udoMzCbIj5aBLhgRfQNt69VqpSnUqUMD0xYLtUGFJYAXu/TF0cl5cmU2gtaVIUETKajxv/gD6Vo
 z50C10y7AwH5Jsw7hVJTGJpOrOdgJBSrGG8uTOJlGoXLw6Kf+D0buAzpAccYCturZdgcrdRy7tQ
 Rb6nIh97V8bhx/WtEzc0fDdTCWQmMQ==
X-Proofpoint-GUID: P9I40R3chqWiQfNxL01_1v9ENr2J0JQX
X-Proofpoint-ORIG-GUID: P9I40R3chqWiQfNxL01_1v9ENr2J0JQX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-09_05,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 bulkscore=0 priorityscore=1501 malwarescore=0
 lowpriorityscore=0 spamscore=0 phishscore=0 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512090183
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251209_151911_058536_2C491471 
X-CRM114-Status: GOOD (  16.97  )
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

On Tue, Dec 09, 2025 at 03:09:44PM -0800, Wesley Cheng wrote:
> For SuperSpeed USB to work properly, there is a set of HW settings that
> need to be programmed into the USB blocks within the QMP PHY.  Ensure that
> these settings follow the latest settings mentioned in the HW programming
> guide.  The QMP USB PHY on Glymur is a USB43 based PHY that will have some
> new ways to define certain registers, such as the replacement of TXA/RXA
> and TXB/RXB register sets.  This was replaced with the LALB register set.
> 
> There are also some PHY init updates to modify the PCS MISC register space.
> Without these, the QMP PHY PLL locking fails.
> 
> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c          | 285 +++++++++
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-aon-v8.h     |  17 +
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-misc-v8.h    |  12 +
>  .../phy/qualcomm/phy-qcom-qmp-qserdes-lalb-v8.h    | 639 +++++++++++++++++++++
>  drivers/phy/qualcomm/phy-qcom-qmp-usb43-pcs-v8.h   |  33 ++
>  .../qualcomm/phy-qcom-qmp-usb43-qserdes-com-v8.h   | 224 ++++++++
>  drivers/phy/qualcomm/phy-qcom-qmp.h                |   2 +
>  7 files changed, 1212 insertions(+)
> 

Does this work without DP tables?

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
