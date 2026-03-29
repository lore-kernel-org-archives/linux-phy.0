Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71FABF3D5FE
	for <linux-phy@archiver.kernel.org>; Sun, 29 Mar 2026 10:54:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0UTsK4uSWQMzZwSjylyssUyKKt0MgXUemXs/SQoWFNA=; b=EmXsIqCpSuPygD
	GQn88MrM7sJqa699Hds3rdf4sCU0RPyGVhd+vv290jzNdmclqic/QD+NfUoH++p1ACVzAC1HXnRpl
	YtsatNezAM1tKrVp/NtgGSA6EP4cz4cOXaBorMRr5tVLdpHkxlXOLEd9Cx0CbRAUfDO/nir5E9Nym
	3ogTKdeDEgzO1yn8PkrQAjNcidp0OrFkuCCxWZNtCX736OZSKLSpEf/r8Cl8GAMp8CgVt5Qoop1uA
	MLdUvZoy/YVYeFPHkPUXA0PjCFHuXI8pBg5Hfe6DrAC2oo2CO64yf/j8WXW/lr2F1hUowXfSuuOJ5
	UExLuVW7BG3VBsA3+WEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w6nn9-00000009qll-3rl8;
	Sun, 29 Mar 2026 10:54:51 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w6nn1-00000009qlN-2wom
	for linux-phy@lists.infradead.org;
	Sun, 29 Mar 2026 10:54:49 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62TAhamT581063
	for <linux-phy@lists.infradead.org>; Sun, 29 Mar 2026 10:54:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=UePRAAybQXDx4YMT9nuMB125
	aVT64hKSuR/Bw8La4Ao=; b=PZtU5N9mYqhmE8EGVCnt5ywvJJ58pDDRHqCdgTjT
	YW9ZKig2z1PN+wKmhMy3k8ylkZrHLToCWOxyWSbZLH1r2+DTzgV4IhF76SRkL0+x
	pj9aDJqi96NaN/pTy8K5Zy7br83XQHN17V2owMJJ68nGCyGNDFF2F5fIZvpGbKT9
	6O+ow57wiJOjXVv51ONw+0O7YNZX6bSlR1dodWCLrOOqgk4prmBGs+AyxSLO8KOk
	2fbwmYOLvLiKcrQqRAC4tiPusXhKFxDCAvf+FZPKyk7u6312QUviTGiK7bcyfAkK
	xZ2gTwLU7BvAeFqCrrt2hZ52wlTtMJ/xVnLQyBj7WBkjVA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d65xqjs13-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 29 Mar 2026 10:54:41 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-5093025ffecso113070971cf.0
        for <linux-phy@lists.infradead.org>; Sun, 29 Mar 2026 03:54:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1774781680; x=1775386480; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=UePRAAybQXDx4YMT9nuMB125aVT64hKSuR/Bw8La4Ao=;
        b=KZzIpvytQsfsM4FVW4EHM8R3U2MfhxonChsP/sDLrxT1elTPIq9ycRkxrqvvEbkW/9
         V1w5piiQwQWX2swxaIpn73cmFTLHopOAuvBWxjrDauB2Jvw+vM1QajsjTC+7lArMSdOQ
         GYAzTiqAvUyTznu8EepyWrQA47Z4Xz79PAL9fcQGBEJ8X4Z1bKTg8XB/iL3hHqzJxvFr
         bekCbVsQ76+/5nPvmmN/+jzx/ppOewhKXdeNOH77P6V0qPmqQvh4TcbH5hnn7msD2TqU
         SusNd+tzIlNCpslP4jT/gjTyfRjFGdOJuU/XrsA3HkK/IFJ3f/kJsV7zC/dSTr1ox+EJ
         M8Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774781680; x=1775386480;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UePRAAybQXDx4YMT9nuMB125aVT64hKSuR/Bw8La4Ao=;
        b=ijctU3P9PDlGytmluDPHTzuGO9gbzBcZPGOwo9kaDC9BG5T0I+REI4KIQ4c/qM5i35
         diSGSzOzJ0X+fXmdgGbYQfTckdZrRWSi9i957cvbKPnGMgNMVPY4fzTfhZHfiOjjCJ7t
         9A2WaV9qICW3mThSV3QXatx7TwgBZVuBrcHKhaOoL44CUKZJPNQw7VvYCpJh5/drc+Ok
         EYYB/k3kybffRyBv5RYjoC4hV/Em+RQbzTeWimthNHwtX10rYK59QnptFi/nqUtgTl92
         K0eH2KyLh05/e7/QeBg30tr3amDlvlFEwOjRq2l4SiX3ABJanfvrawiBWWpboo4jXIBw
         mw9g==
X-Forwarded-Encrypted: i=1; AJvYcCUnpLRx68HCtD7ppFZycAqqiN3DzIpSdTtjR4FImjjTgim5YPguJbCgvaPvKSAK67PjOEuy3XDWls8=@lists.infradead.org
X-Gm-Message-State: AOJu0YxkUvs1GxyZy65kGqWVQFb/ypGEne0NtSuO5sL7WFZzmPLKsSPR
	nZcG4qdXgp5fRC3R00bhO3IzknXHXnOzGegNdMy0rl+HKI9FllhiGyoQEe++mJ8x1S189Y+NmyU
	k66Qao/UdgRXZFsX+fdMYiVWj+E4HzznyQqo++XKpizINtGSc0bybNjJKjEAIOJML64AZ
X-Gm-Gg: ATEYQzxuTlz1cWe0DqEemCjH3zPGfCmDbJWzkon3HX/W9xl35Gy5EruQqn9H4n2nxre
	vzjV+Dpr8ZAF5YSkbOXE8sABwmJnL/94XzaPUSANXFHzdPofkQN/hbnJovGxwFe4e9+WCD+AogK
	Lj6VUTKCaXNp76WRXqcVIRliFw9Ezz2G4thqqvoNULtQm/BweBjjmqhKRyeaAhAfSgAoExyQ8vt
	B5g3br4DcI7Pk5K2E/vQKiNhYqDgQOkakNmfNIZlMV4q2cu9RM4VVzFUJ2WXPxMULwt7fchVBin
	TlsdDsv/sX6jg6DrJJgWJ5LIezSoR1y9MrY3GAlolu4aSO2BU5A7Pe+E8w58D7nGYfzYQ4xbxW6
	tt6yJqaeAjsQuUcd+ZzHE3fQomziRd6QtoXDSSEy+G7wqat4GO1h+n5uo4XerbCYJywxE2fmzd9
	Ma/8XiVS6lV6GC43UAWd2JHXZivYTZrIjwZoQ=
X-Received: by 2002:a05:622a:64b:b0:50b:49c0:b6f0 with SMTP id d75a77b69052e-50ba39aaf73mr119224261cf.61.1774781680467;
        Sun, 29 Mar 2026 03:54:40 -0700 (PDT)
X-Received: by 2002:a05:622a:64b:b0:50b:49c0:b6f0 with SMTP id d75a77b69052e-50ba39aaf73mr119224021cf.61.1774781680010;
        Sun, 29 Mar 2026 03:54:40 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a2b144f5dbsm981035e87.59.2026.03.29.03.54.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Mar 2026 03:54:37 -0700 (PDT)
Date: Sun, 29 Mar 2026 13:54:35 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Bryan O'Donoghue <bod@kernel.org>
Cc: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
Message-ID: <r767islbwq2a3m6rf4wvl4hxzafdsw74jhev7jjz665kfymn56@vcn4p233n74f>
References: <VwCtoebjwHqLTucsrGruvBpedA4k-Melt7C0DA0aHSVld3PeotwZdtMUm3EFpvQyScrl6yejmLaK7bY1avT1zQ==@protonmail.internalid>
 <8ac55e5f-72ed-4331-bf42-92ccf97507dd@linaro.org>
 <5d7d5bf8-4420-4d75-b928-820bb9233e52@kernel.org>
 <CiKTMNVmEm3LXForJ4o-DjuXFxbKkiaLtqbFPYyA0rC-Ij0hJPmCw_LUixA-dZe2douOwy2Jxizna8qBRvUjPw==@protonmail.internalid>
 <2houacfdkozzk35ky5xtwe3utkvyx4lroyrhvibb5lg6lad2g6@56akvtqigaep>
 <556a6736-472d-4551-b5df-15e809e7e20e@kernel.org>
 <a44a0f58-11cd-4aa4-962f-a5b153e24d82@linaro.org>
 <vcj9b-49PycEnk8KeGcgXAaN09KfYZnW7g0LayiEPie9p-4krmMDfNO6Nx4DLgwoKHdKJughl7zoxvmKVkqOag==@protonmail.internalid>
 <qr6ubhjlzxenx7rswwkfu2nkc7ci5hw5tynpipa76bqsibbd3d@rw5d55vjnkbe>
 <0322e0b3-bce8-4415-90b2-d14445986e23@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0322e0b3-bce8-4415-90b2-d14445986e23@kernel.org>
X-Proofpoint-ORIG-GUID: 1cF-zhwZFSVHqX9Qxf2ruDY9CJi2o4nW
X-Proofpoint-GUID: 1cF-zhwZFSVHqX9Qxf2ruDY9CJi2o4nW
X-Authority-Analysis: v=2.4 cv=evLSD4pX c=1 sm=1 tr=0 ts=69c904f1 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=Qxd1fPiA_TqsfyApjdEA:9
 a=CjuIK1q_8ugA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzI5MDA4MiBTYWx0ZWRfX8zPiBEyaJc7P
 0JtZdzfrF/sBk9XoUrZ81yc9J2LDhPXQYifKGjIBYWFIdWcj3jHTiUiKpwgTwmXbvfE+AVsQGC6
 l3wPmW//LzIWkFGXjOvxM9DKVGmYB0mcNUscXO8r57ifWsVilzkF99hVb2knrIKgVT1Q5USfXSN
 THTLHjnSik/eBF6r+r3Nb6gooyPtB6tec0JlgXbWu0606iUOQ26Mi52hTV8LzvLfh7PPrcYpVbk
 7aolVnD5sI5JclnamcTuSyya29mfzijxm/YbaSdqTSPAP6/flnh9OHZg5z3UKEVsNg5r0Oz7AQA
 Sgoyw9nxgLXh+8RPrQxbc68uSPlZf5yakzmULJHyW1XJHdeb2Gz9xMBPufijxx+ASmdU6ArYe73
 +OIC0/MT3CJK5hkwVA3ZUgccCTlAfshcCW7dxL3w7o4a8TTbiYxSXTLaOddKNtXtDv3zIRoDEyo
 S9ycMZzhLwnAJ6pZ+Ig==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-29_02,2026-03-28_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 bulkscore=0 priorityscore=1501 adultscore=0
 lowpriorityscore=0 suspectscore=0 clxscore=1015 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603290082
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260329_035443_770923_5F99A62D 
X-CRM114-Status: GOOD (  34.19  )
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

On Fri, Mar 27, 2026 at 11:40:51PM +0000, Bryan O'Donoghue wrote:
> On 27/03/2026 23:23, Dmitry Baryshkov wrote:
> > On Sat, Mar 28, 2026 at 01:12:22AM +0200, Vladimir Zapolskiy wrote:
> > > On 3/28/26 00:29, Bryan O'Donoghue wrote:
> > > > On 27/03/2026 20:51, Dmitry Baryshkov wrote:
> > > > > > That's just not true. If you read the camx source code you can see
> > > > > > split/combo mode 2+1 1+1 data/clock mode requires special programming of the
> > > > > > PHY to support.
> > > > > This needs to be identified from the data-lanes / clock-lanes topology.
> > > > > And once you do that, there would be (probably) no difference in the
> > > > > hardware definition.
> > > > > 
> > > > > 
> > > > > In other words, I'd also ask to drop this mode from the DT. This
> > > > > infromation can and should be deduced from other, already-defined
> > > > > properties.
> > > > 
> > > > It still needs to be communicated to the PHY from the controller,
> > > > however that is not a problem I am trying to solve now.
> > > > 
> > > > If I can't get consensus for PHY_QCOM_CSI2_MODE_SPLIT_DPHY then so be it.
> > > > 
> > > > I'll aim for DPHY only and we can come back to this topic when someone
> > > > actually tries to enable it.
> > > > 
> > > 
> > > DPHY may be the only supported phy type in the driver, it does not matter
> > > at this point, however it's totally essential to cover the called by you
> > > 'split mode' right from the beginning in the renewed device tree binding
> > > descriptions of CAMSS IPs to progress further.
> > 
> > Okay. How would we describe that there are two sensors connected to the
> > single PHY anyway? How would it be described with the current bindings?
> > 
> > --
> > With best wishes
> > Dmitry
> 
> Assuming you add endpoints to the PHY i.e. that is what Neil appears to be
> asking for and I personally am _fine_ with that, then it should just be
> 
> port@0
> port@1
> 
> if port@1 exists, you know you are in split-phy mode.
> 
> Its actually straight forward enough, really. To be clear though I can write
> that yaml - the _most_ support I'm willing to put into the PHY code is to
> detect the port@1 and say "nope not supported yet", since like CPHY its not.

SGTM. But let's define the schema for those usecases.

> 
> ---
> bod

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
