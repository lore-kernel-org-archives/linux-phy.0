Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7CCEC4452D
	for <linux-phy@archiver.kernel.org>; Wed, 22 Jul 2026 05:34:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sCp45ZJlk5ZhlruMHRfCVB+eV7z7MA4ZGdrqQnGFD6M=; b=sCIsWaRJsPMfYm
	cAuV6+wWO5TOdbJO2KCS3/ODGT6W0LN0ctmLQhDPsnm22hbvU8W1WB6106ZvQ1mpNRrNKNpe2FeLa
	dxDYTOhbdQ/R0zV+w1ORz86pTD7aHcxjlltHaawumj8aR/tZUO5PZYXdsQ8UVP00Bwn6wI/YhABKR
	up1hqY9Qkz80vgdQRN/FoMmz0JuxZr7Pf4bW9V1hUCbbF8sl3ru1hqHhx7VVYdlbH5XUNEG0ubbkL
	9iGn84n14I55+jgNq54DmsQtV3OR/rKwaSARQMswnrUU7Wh8pf3oOESM1mNxdKB4CR+kf/oJGvj6d
	d9STRVDdQ8ZMAlIIyLjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmPbN-0000000AvnW-0bll;
	Wed, 22 Jul 2026 05:34:41 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmPbL-0000000AvnB-1ilB
	for linux-phy@lists.infradead.org;
	Wed, 22 Jul 2026 05:34:40 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66M53lLP4027336
	for <linux-phy@lists.infradead.org>; Wed, 22 Jul 2026 05:34:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=LlODXpltO6AC6vP+2wHe+ho0
	iSx/n3O4fHPoL+am4BI=; b=PkGF3nnTMXSZbEDIS67EgQ3Ju9wfrK4dgBljVKAN
	S2LzcUV3M/0dmEcrMGDoQtB3tycAJ6Iequzmu3M7d2qXbz+nLHQKArx6uebLKnky
	qZvveDX0gdKmjHsI9XgRx1ljL7MgYt5A5pWGWiYGBbvcEaoBikvkTkrgLTRq+gZv
	xYBFZ2AWafXlVNJ/neWaFDuAqqtB03nZlQsJduV/J3DpIIgc8MT4B/yj3jiV9yFl
	Jm87iJkJc5AODztmeOO+k+zpHQJ/nztDQH1npou4xur9nuUkgcCAlPSMCN+zmN/H
	dZEicrQysRPK7cTFpxEKj1Q13r9KnnlfY6/dYWspNbBHPA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fj9bsbng2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 22 Jul 2026 05:34:38 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-51c1a9764f0so249512861cf.1
        for <linux-phy@lists.infradead.org>; Tue, 21 Jul 2026 22:34:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784698478; x=1785303278; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=LlODXpltO6AC6vP+2wHe+ho0iSx/n3O4fHPoL+am4BI=;
        b=csfTUhKRsbFxcGHd+grNkG1pBcqYpUBmZEUGuK/rPMdKOXacfQUfCOlLjZuIqVUyo1
         X/3CGybolAhKl1NHPfocAdiS2N2lKmP/OlqQtK6ec3Tco0hOSYWXFl0+Osh3DJgfUS9l
         ci2WSkbDZ/obhW2mRjSZBV2ktp09kzBZ3WAy5rxFum1FeC+vUoO++acJ03tkvOSOBYKk
         A6+OgsQH8L9H29ILdN8Q0DfKO0/nBhzFD2KCx3YzyWbGxeIcp7OVv5pTERJ0IOBxYfT3
         T9ap5uIRqEPuY36BouQH6Lyk6kIyGBFVvCoEr5JLvRrwkcP5WbdeNkvTbcdHxLtTVxkr
         Qr1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784698478; x=1785303278;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=LlODXpltO6AC6vP+2wHe+ho0iSx/n3O4fHPoL+am4BI=;
        b=LI+b3HtpQeqEZ1orRlu4p7oULUVQHvcyM4w8C3CvsO5TNW3TNw0zYOPEZ+ah5iDpUl
         hXW/AMCho2q34CpDH7Is/s7kVUkVEyUxNyp13lEsiTGs2TqE7zHIaZ4RtX8O17sAXc7F
         JT2A7YnWS5DKixVdHZPgKJ3TLCkdKle97srPJ+Sad+d5Hv/59sqFP1tl+8XWkqScQ5vX
         2b7wFndneT7iu7w6SeI4DqIw6kKHMTsIxLqOa5OEw90SAe7KcWR1Sf9i0lgOyQSG1g6i
         zF4qEG1L8uf1dY0G5S8YPV4ZCR/7PAg910hPIgh6sphmwMXpozCFyFBk5UqtAFnezKi8
         Etng==
X-Forwarded-Encrypted: i=1; AHgh+RoFzg96wNMj0POFL4SzEbnndMVk7IgGVMllKrb9fDdi/svhsXS+6v7JcIx14j+uHZGDfCvAgUZlGlM=@lists.infradead.org
X-Gm-Message-State: AOJu0YxhBMcF1Eq4+kIyru3Lmv50pnNMIVmo2hzIadiD6Vlo84NymJoF
	neM34hsyTRUsmw9fWSgmsNBlfEqSMEScMyFAEXk3zA8hjejC5EBVx8XE5+f4u3Ovjd/71tsvdlz
	LRV0hnGe1BiSh0mDhdUwDRYtpEpy1lEj88R5Bm14cycnrwv5dsnNy9n8bMjshu/ISQ79u
X-Gm-Gg: AR+sD12fYD8wlluaEdaJgR8mmHi8HhVuTHth70Lpk8R7uAkUZxzaa5ffjIlShbxLzHI
	hDZOHSYUPAOm/iq2/vWkDHB9TwD2Bk1vvjXbO22ikpFxXFJti9TMNIQGZurIQRN8WVdPlBCBOXj
	nktyfMnCtbg04JowCGsQHfaYSTAp/DhpytDz32RUnsSCBqNd+1VlC+qofyw9qKRl5gkUVSfnAUB
	/mjyvSl6H9OoyFVWPREMZG159/o1TS2pDR1TcQsh7r0LHaxlQbOJbFAd7AtIuGlucaPzMHPL/jZ
	wez6KBnZ2ikiM1k64adsIWipPsNOwRJc5wVjhRrG0EDx1zqmTCdo1UvRFLoI5NUgbNvcpPnzUqy
	ESATrXD4gTM/+Cy43YCqTwUgEhfy31D0t5C4mddH/8bwy7pUFrnUJi5dz4ZS+3gfrYBTXjbJkwD
	zk44ScJkKRbdmkgw==
X-Received: by 2002:a05:622a:15c2:b0:51c:7b12:5ffa with SMTP id d75a77b69052e-5213d7ac3d7mr204182241cf.86.1784698477669;
        Tue, 21 Jul 2026 22:34:37 -0700 (PDT)
X-Received: by 2002:a05:622a:15c2:b0:51c:7b12:5ffa with SMTP id d75a77b69052e-5213d7ac3d7mr204182071cf.86.1784698477258;
        Tue, 21 Jul 2026 22:34:37 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b2a9d30758sm276826e87.45.2026.07.21.22.34.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jul 2026 22:34:34 -0700 (PDT)
Date: Wed, 22 Jul 2026 08:34:31 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Esteban Urrutia <esteuwu@proton.me>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org
Subject: Re: [PATCH v2 2/3] phy: qcom: qmp-combo: Specify PLL version in
 qmp_v6_dp_serdes_tbl structs
Message-ID: <zd5wulhfcw7vzbwaz4akhetbqqub7ygsmexuswkdvzxcfmqvqa@hom4ax54efft>
References: <20260715-sm8475-bup-usbss-v2-0-2d8def39b190@proton.me>
 <20260715-sm8475-bup-usbss-v2-2-2d8def39b190@proton.me>
 <wg6lgpaexz4ktjlfzqpsidj56wr3hjax2ktn75kqsoaubtdxre@xh3yn3xpr4af>
 <b77dc15d-f9ad-4c06-9e24-8f73421e2130@proton.me>
 <dph6cacosw3jzksqxp7fgofdueukrq6a3c5xys4jfrkqjuigvx@sroivvrxiwxk>
 <47b1db2c-6314-49ce-a7b9-f68eeb022295@proton.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <47b1db2c-6314-49ce-a7b9-f68eeb022295@proton.me>
X-Proofpoint-ORIG-GUID: Yto-L7u1x3aHfjAc0Q7VsLw9QA04aIlw
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIyMDA0OCBTYWx0ZWRfX82AvG4VI6LYr
 e44tLHQxxEoSdeDzAznSAiCY6BZILF65vDZgFs06UFuI6++2MU9hCQV718tOL+2tRbLnoBurOpi
 Y9Klw2aOfahg2MmBK3Yz2cynyEmY8omVpusGFmEoJaI6GDlpu9/RW354sKO6vUp8YedMhrR9rGH
 H/spFzAsaMt/evTQcJptMZTUFi8Zpu2cZAJX9+fPTkWUca3fv86i3qp+0VaQ5Jj8/6Boa1muy5A
 tJyogM0O/Up0pbpm53XutUcVpFApoe/pHLZH4tz4ObjW+111M5pcfR01Q8IaKVvEXIj9HTh6x9m
 1RtSp5CrXFuuhcruhS36D+VzkSVq3CO7JCSt9X6K18kLJ0fcep6wIar1ZcAMPhCynTXjNEs4H+/
 C4+8qDiNH4UfCSEo/RubhNmowUl7sEDSPr3D83hyLIJNBSQlUhEeASePJbMcnJrtFRMEYIzzKtm
 Yk3JbI+gfDv/vBrOq2A==
X-Proofpoint-GUID: Yto-L7u1x3aHfjAc0Q7VsLw9QA04aIlw
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIyMDA0OCBTYWx0ZWRfX4EjVxxbpyqif
 xMfG7dskJU6ASVQrhlRqM3lUCA9oG+qIcjPkM/SK5zVCOjSL1F7jwaW85O4FBmD66Q1w24ysX6k
 LlZPPxFa7KbFUGsXXPEVcWMyLCd6MZA=
X-Authority-Analysis: v=2.4 cv=QK1YgALL c=1 sm=1 tr=0 ts=6a60566e cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=fY_eGrlidOvAcYwQiNEA:9
 a=CjuIK1q_8ugA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-22_02,2026-07-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 phishscore=0 impostorscore=0 bulkscore=0
 suspectscore=0 clxscore=1015 adultscore=0 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607220048
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260721_223439_497410_DFEA55B5 
X-CRM114-Status: GOOD (  19.03  )
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

On Wed, Jul 22, 2026 at 01:02:40AM +0000, Esteban Urrutia wrote:
> On 7/21/26 8:35 PM, Dmitry Baryshkov wrote:
> > Quoting commit b5383dbae381 ("disp: msm: dp: add pll params table for
> > 4nm PHY pll settings") from the SDE driver:
> >
> >     Because of changes to ref clock frequency, few of the pll
> >     reg values are different for kalama compared to palima.
> >     This change differentiates between these two 4nm versions,
> >     based on pll revision and also introduces a pll reg table
> >     to differentiate the values.
> >> So, I assume, that v1 vs v1.1 is a clumsy downstream way to specify the
> > ref clock differences (which affect those tables).
> 
> This does not seem to be the case...
> When HBR2 is used over a direct Type-C to Type-C DP Alt Mode connection,
> link training fails when v1.1 tables are used instead:

Yes, because the platform has different refclock.

> 
> Jul 21 20:56:39 esteuwu-phone kernel: [drm:msm_dp_ctrl_link_train_1_2 [msm]] *ERROR* max v_level reached
> Jul 21 20:56:39 esteuwu-phone kernel: [drm:msm_dp_ctrl_link_train_1_2 [msm]] *ERROR* link training #1 on phy 0 failed. ret=-11
> Jul 21 20:56:39 esteuwu-phone kernel: [drm:msm_dp_ctrl_setup_main_link [msm]] *ERROR* link training on sink failed. ret=-11
> Jul 21 20:56:39 esteuwu-phone kernel: [drm:msm_dp_bridge_atomic_enable [msm]] *ERROR* Failed link training (rc=-104)
> Jul 21 20:56:39 esteuwu-phone kernel: [drm:dpu_encoder_phys_vid_wait_for_commit_done:545] [dpu error]vblank timeout: a0821300
> Jul 21 20:56:39 esteuwu-phone kernel: [drm:dpu_kms_wait_for_commit_done:527] [dpu error]wait for commit done returned -110
> Jul 21 20:56:39 esteuwu-phone kernel: [drm:dpu_encoder_frame_done_timeout:2731] [dpu error]enc37 frame done timeout
>  
> > I'd suggest adding the comments about 4nm-v1 vs 4nm-v1.1 rather than
> > renaming the structs.
> Regards,
> Esteban
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
