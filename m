Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 738A5EFB806
	for <linux-phy@archiver.kernel.org>; Tue, 24 Feb 2026 06:42:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WlvqBlldn/U6nb2mb4lQ0Mf92ztHcJ1AVZShhv5QaXs=; b=RGG9ZLsdyvUq6n
	vIthWrh/6G+b/NRfSbrewRqlkS/vGRFNLj9KAsSeSE3ZCpnO7qZo4tHEa3COSViyyEUQWYxkqiF3o
	LngKBuYd4uPd8QQrrBR/z9GBlhVIRwSY7Vaez7LW3WwV6sP+7179rfVOTC+Jai8mCxXAdUXKWeK/L
	M3EpNF1klPZeh+ptIgKYDMkl2IpM7whPwUliXN+kxN5Xz/B8uTXfOImItZorEfpcdq1TmnY8ukF7j
	7WzyG3H17Ere7NR3oOr1TrJg3EZXMWpnvt7FiG+5g641WMNQQAPqxsXUjqH0xlFQuDTYqJSiUqacn
	AnVu+1kETT1EY1ExploQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vum7M-00000001Xd0-3g2O;
	Tue, 24 Feb 2026 06:42:00 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vum7K-00000001Xce-0Za1
	for linux-phy@lists.infradead.org;
	Tue, 24 Feb 2026 06:41:59 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61O4LudJ1251768
	for <linux-phy@lists.infradead.org>; Tue, 24 Feb 2026 06:41:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=lG/xeXk2I/MOcbaT0nf4rKBx
	XhOqmOGfGClBVPWMObA=; b=LxXtQ0rRpY2L2rxvR5nZeQmXd4kcCzKXgsZfTStB
	EFWeY7EGARo3NtmSwZRxHG3PRjcSSjrzc12yD9JCbGAmd3yHNHdMJD2k951++t9E
	la5+Mcsy71DWaCJj7VbjhYc3TjRjKRjLATk6a61i8z2+mzntnMwro2AjKthTE/kS
	K/s/gh4oO7oL3hVzdb4EnJ4zNVOmmEKUaW2q3D0C3Ewo07MJBVQjSGBjQ2cCgmcs
	+I0KJAJvWwdP+L5yxmEe92xbQyO4hUG5Cu//twy3LvH8Mcia+fuqoEBgxEaVNMNG
	yNxhIdleJY273zKHbaUbtqZVgFI08vqDtTBSMlpFpi7gWQ==
Received: from mail-oo1-f71.google.com (mail-oo1-f71.google.com [209.85.161.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ch4568fq6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 24 Feb 2026 06:41:54 +0000 (GMT)
Received: by mail-oo1-f71.google.com with SMTP id 006d021491bc7-679dcf1f680so7872905eaf.0
        for <linux-phy@lists.infradead.org>; Mon, 23 Feb 2026 22:41:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771915313; x=1772520113; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=lG/xeXk2I/MOcbaT0nf4rKBxXhOqmOGfGClBVPWMObA=;
        b=kstl+g8LioulN2fJZ2Me5SGVAXq+b/H6R4DEol530hv9hPVEEdyoUnh6F8eJsr0MzC
         KhTwAsb+2keKi7JMnB9rkk+BavKG6VdGWLE5nlumbAT6SqhdjLkxLUbXEUZB6bXVSKJZ
         eT70T6LgEGkpwDlrvT9ykcSofDrdGXb6TcYa5IjyVlK2hBtZWydOSxuSpCg9VY82d26H
         bAk6umYoD/+B3yJgPpXamcSF0W8vSieM9m52sbxCE3PA2enRiDpD/Yn+xYjBmxR3nPoK
         /I0aElwlBiDohH4+eySSHtsb70VZNPd0QqF1KDBeRXjCy/Edfu+GA69tlC3ZGmHAXjkd
         OCyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771915313; x=1772520113;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lG/xeXk2I/MOcbaT0nf4rKBxXhOqmOGfGClBVPWMObA=;
        b=pIadyygbIBUkbf2bEe4Itt1yPsENDgvZv5VyGDaDYmzuTa6PWOL03S2A1rd+sRr626
         Nw30aY/5toTA5uZm5fzhhSJ+8GhR5AqM6G6C/kk9Xn7A+XrCQH6v4xXxqWhOZ6xVb7bl
         Xf1o0FReLSCJbtXCgqXx+ClAxX1uuPSiSu0K26GsJl+7vPGjwfBtNfDNVPVcNGL/jCIr
         1pc7A3GJKVe6XOsereepJiN0/htbg+Vn+nYZ9ThT3HLTMHDFY/QP4OuTBuzM+siWDKNE
         ROSJayYo8xghifBIOiq0RyupgVjEgXxMygHkD8WKFx7/JEoIBZPHuTjrBXHP8h48XwKU
         rMrg==
X-Forwarded-Encrypted: i=1; AJvYcCW5wbLH62xUsV1yvTm6t/19LNeGZY8TtMf27akA3geMmJmyMCRVlyLWl/w57+dRowuGqwrhO3getI0=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy3P/JO4RiadiOCKVoEMbHENE17XxqOCyp51LEuDiX9snZyvyo2
	NkLhpiN0IBAezNVk2SzP+fEbq/Q5sAzMQ8A7En15DsaMEWVSxxyamPZ0YwmemUvHrBD9VyreVyl
	agOaH2/YLvDeQvA6t3lnxVSAXOmGl6iQctrT/EsLBCAf9saowxRHD+m8PerlY4i1ARtlM
X-Gm-Gg: AZuq6aIHVY5YW5nJztqeKkcxHl7Hg+VQYLrblcIsBzHW1PtFw3mFJ03MPsHsuURFnKC
	5zuUoBGAzB+nNVkFOfatvpy7MCVvahi4+lUo/B64MmMj2fK1pXCaD048lBJTaR8Pr7fWaOIV10U
	D9SgXjIPOv0LbEFdaje9aIIdHlScXqeKLx7CvZIppRLThs4RsqsTvnAajNB+zKW61X64IjbmvP+
	ER4fOUez9qGsLPGYdWV5xYESTeAoxoLe1eJXoNEwmb6B+Kp9ho6Vfffe2LghhkLah5n78AE/LqI
	1KBeKuwsbs9xHzshN6ivvgwd5vmCi9mtWkcMBwGn+eDhlNQh13wyUwB1lraAxCIULpADrgKlwgh
	YgpsnCX+YlGHQ+Lrqb5x3ESYy/SObk4F6sRAyoj3HGCw+IKRbNdzuCDoP7dCJWUcynEtc
X-Received: by 2002:a05:6820:160a:b0:662:b70c:a414 with SMTP id 006d021491bc7-679c425bc9dmr6064079eaf.14.1771915313568;
        Mon, 23 Feb 2026 22:41:53 -0800 (PST)
X-Received: by 2002:a05:6820:160a:b0:662:b70c:a414 with SMTP id 006d021491bc7-679c425bc9dmr6064067eaf.14.1771915313161;
        Mon, 23 Feb 2026 22:41:53 -0800 (PST)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-679c5630827sm7711238eaf.3.2026.02.23.22.41.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 22:41:52 -0800 (PST)
Date: Mon, 23 Feb 2026 22:41:50 -0800
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add
 vdda-refgen supply for Glymur
Message-ID: <aZ1ILpdtBCMDxl2R@hu-qianyu-lv.qualcomm.com>
References: <20260208-refgen-v1-0-87ca84fd78b3@oss.qualcomm.com>
 <20260208-refgen-v1-1-87ca84fd78b3@oss.qualcomm.com>
 <20260209-magic-conscious-seahorse-b81c8b@quoll>
 <aY1Jx5J8x/OALk5M@hu-qianyu-lv.qualcomm.com>
 <hcslao22elcihjw56ltu4yo54lotheqpikzsrq6tia33di4fs4@2ygrbwhcfx2a>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <hcslao22elcihjw56ltu4yo54lotheqpikzsrq6tia33di4fs4@2ygrbwhcfx2a>
X-Proofpoint-GUID: fCOWii1E8sgjwRgbDew7OuCHSBJQ4fhF
X-Proofpoint-ORIG-GUID: fCOWii1E8sgjwRgbDew7OuCHSBJQ4fhF
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI0MDA1NiBTYWx0ZWRfX8N06OFuPYQoD
 CLo7FF3eWoA8xUAKQAkY3y+uaubQUEza1EiNoHNKScj4Iu8V38NsAYuQbf80rgYh71CGaVLc4D0
 9ZRFZE/rybZfNqnBYLFyVovy0mZ4HhLwqoKAR5PYB6wLJ9jOmeT3PynnYQrJqqLi34sLlCrlN/c
 vwdoXLwkLf6nTM1u0ORBKFWk+c4HSQp9RHvCvB5RUzZ4A/fIb1JQlNCxrwVpMcoFQ1/uosjtP9M
 sVVRTwhny+kqg+v2zs2+wQUXBPAruZ1NuDHd/t+yF09CLaAoQxqep0OvKvzUTxTGj68SnpQY9Hk
 ZHz9wS7w+LRqsph0uK9K7f7lFoZD9VOnAgQ9VTMzo/RXddx7QtFZKvSKiJ+gHpHE57Wu8/C1G6n
 BpLgBCDIv/eOUH84PKyj4th+utZwfQPt+B5DOIH2b9SY6iMfoN5ZBCQfd2Ez237TJ14csmGXVYE
 7+9SXQ+aB64+oj7sNqQ==
X-Authority-Analysis: v=2.4 cv=J8enLQnS c=1 sm=1 tr=0 ts=699d4832 cx=c_pps
 a=V4L7fE8DliODT/OoDI2WOg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=Mqtz4aph0Rek3LVAYukA:9 a=CjuIK1q_8ugA:10 a=WZGXeFmKUf7gPmL3hEjn:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_06,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 suspectscore=0 phishscore=0 spamscore=0
 adultscore=0 malwarescore=0 impostorscore=0 bulkscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602240056
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_224158_322879_2EF86F27 
X-CRM114-Status: GOOD (  38.17  )
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

On Fri, Feb 13, 2026 at 07:47:36PM +0200, Dmitry Baryshkov wrote:
> On Wed, Feb 11, 2026 at 07:32:23PM -0800, Qiang Yu wrote:
> > On Mon, Feb 09, 2026 at 09:06:23AM +0100, Krzysztof Kozlowski wrote:
> > > On Sun, Feb 08, 2026 at 08:49:39PM -0800, Qiang Yu wrote:
> > > > The PCIe QMP PHYs on Glymur require stable reference voltage provided by
> > > > refgen. The refgen itself requires two separate power supplies:
> > > > vdda-refgen0p9 and vdda-refgen1p2.
> > > > 
> > > > Since there is no dedicated driver for REFGEN, add vdda-refgen0p9-supply
> > > 
> > > How does the driver matter for the bindings? If I add dedicated driver
> > > for refgen, then I change the bindings?
> > 
> > Yeah, I know that dt-bindings should describe hardware, not software. But
> > what I meant to say is that the refgen is different from qref which is
> > controlled via TCSR registers and its LDOs are requested to vote in
> > tcsrcc driver. The refgen doesn't required register setting and it doesn't
> > have dedicated driver, so we vote its LDOs in phy driver. I will avoid
> > this statement in next version.
> 
> I must admit, I could not find references to the refgen in any of Glymur
> PCIe-related HPGs.

We can find it on ipcatalog. On Glymur, there are 6 refgen instances:
u_cm_phy_refgen_0_west supplies to pcie3/4/6.
u_cm_phy_refgen_3_east supplies to pcie5.
This two refgen also supply to other modules like usb and qref which
is required by PCIe phy for stable reference clk.

In previous targets, refgen was often ignored because it shares LDOs with
phy or qref. We typically only vote for vdda-phy, vdda-pll, and vdda-qref
supplies. However, on Glymur, there are more instances and less LDO
sharing between phy/qref/refgen.

> 
> > 
> > > 
> > > There is qcom,sc8280xp-refgen-regulator so why there cannot be
> > > qcom,x1e-refgen-regulator?
> > 
> > I think we can and it seems better because the refgen for pcie phy also
> > supplies reference voltage to other modules like usb. But I checked the
> > qcom-refgen-regulator.c, it contains some register settings and there is
> > no LDOs voting. I'm not sure what does those register do, maybe Konrad
> > can provide some backgroud.
> 
> Those regs provide voting for refgen, because on those platforms DSI
> block doesn't have a hardware vote for refgen.
> 

Okay, for PCIe PHY, we don't need register settings for refgen.

- Qiang Yu
> > But on Glymur, we only need to vote LDOs. So
> > what if we use a fixed regulator in the device tree to represent refgen?
> > We could set refgen0p9 and refgen1p2 as its input supplies, then the PCIe
> > PHY would just need one refgen supply reference.
> > 
> > - Qiang Yu
> > > 
> > > 
> > > > and vdda-refgen1p2-supply properties to the PCIe PHY dt-bindings. Use
> > > > conditional schema to restrict these properties to only Glymur PCIe QMP
> > > > PHYs.
> > > 
> > > Best regards,
> > > Krzysztof
> > > 
> 
> -- 
> With best wishes
> Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
