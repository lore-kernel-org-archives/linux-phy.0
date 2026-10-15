Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00205CC6B2F
	for <linux-phy@archiver.kernel.org>; Thu, 15 Oct 2026 05:10:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=llSiPJUo7/x6BdqCjs9XdGe4I+V5zaIr1T7KdvK2LpE=; b=qCZBfcK6xg9o63
	diHRiIlVTTQfNjxlLrqw8+w1GUZ+GX889E4dM1Ifxv6wrdVM4pnrsWCo8Nlu86x2KrOLtM2WXR0w4
	M5g9xQDhBo+drhl51WHacPVZFlG6y1/g7uYmIur70NQN9aurKit4s5Rftg8v55yNzw+N6AWTul6Oi
	w9bTii2HP681ObRLXVkOidlN3JaFkwhKD4ABKB1Z3tuOwT2eQbUEEuJ0nodHIyHWXrA7ClIIQqIHy
	m3VeIWv8AZjoqtQABOHqSJl9DVMRCT6U4P7l/1geMfqi1KrovbotyzxbVOR4v9Aa7bcD5K0s2ZPht
	BLqh9lvLxZ/i/lfRYSKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHDjn-0000000GqRG-0bah;
	Thu, 15 Oct 2026 05:10:43 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHDjl-0000000GqQt-0iWd
	for linux-phy@lists.infradead.org;
	Thu, 15 Oct 2026 05:10:42 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69ENQ1ke584290
	for <linux-phy@lists.infradead.org>; Thu, 15 Oct 2026 05:10:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OzATJjicdxKOoPMvx85ZokhsKNViTN7VDVAgDDyZFsw=; b=jfLGB4yKrVfnzO9N
	8uAqBkNe/EAfG0ufL9LX5rnszgjbNd+r6/5itF9HELLaBJK3PPrN8x1/YEHMy0Os
	s67f/JAOwAu7P83+ARCGL5sih93mIWkEWGs9TvJqRgYNTrpj1vH+J34+ovfOeMaf
	CgM9bhfbqatfCJLke/ON5uy75E2YX/JVAC4LikbwE6DPCNxQdPIdrjwIjSHwv5IO
	GrOnVMRbxPoCNny3W1mkELYun02QEhv8Mk+JbL8Nxg05zoumW7OLuMg8/IiWIMn4
	xK/1emLDGNeNLfQd9nKxuWTKx1alP2Fu4/1vhvHY77PJkoumtkSrinesEHxB/orN
	He8Fcw==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hakdes16y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 15 Oct 2026 05:10:39 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-887c99013edso856269b3a.3
        for <linux-phy@lists.infradead.org>; Wed, 14 Oct 2026 22:10:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792041039; x=1792645839; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :references:cc:to:subject:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=OzATJjicdxKOoPMvx85ZokhsKNViTN7VDVAgDDyZFsw=;
        b=eeYed82aEYIJoh0UuR+AzJepwTA5p1Kw98vjH2Dhonoimansf/9WNHUFbjmzxPhkde
         /fgQ+qzMeCKDAZqErKbf1dumyXPl5Jjlqm9L8oF0KFcn4Ysoww77c8cIM8FTrUI73CVR
         1ekJr/dIhbU+uoMBAjbZdWxUpzpslULJRaPdabM418d8eYBupt2KT0GqTApgZzb5QhzO
         PI2zBL7mJenyI8ufqu+W0sSfrndBShSBa7pAJf7TnaLagqOf3Je0hlo5J/QseroV4dTc
         Z9nUZedxaOaSilgzVXhcYQOp43UxXe1NL5cPolrmCVUe54fqaf4wgVQxDFsaWtyO2TLh
         g+0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792041039; x=1792645839;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :references:cc:to:subject:from:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=OzATJjicdxKOoPMvx85ZokhsKNViTN7VDVAgDDyZFsw=;
        b=ff20a+m1/K78NpTpP1Zi8CZ85KOOFd+tkn8hMz6+Ls+9JNv3l0w/5qM7Mtnv6Y9OR9
         RIPrwrtjIXxjc3w9oU9bEC0oWaL1GHFA26bf/SaDfIMKAPFKjH+RjDUTuHVDW9Og2Xk/
         QPkrYJHll2Xvotd6rIIS2SatrUZIIiuAkUdlU27DSLpf44eipQR2PQmg5agJe/Nb9Dvu
         eN7F69yDy/u1Kw72KyAYXsvCW3NgJ9kbOMPM2B4oXb/n46TYC7tdnOPXK+prKpyqrRZG
         o1Xdk2Oe9C75M+FVd08D321JelVxVHQepJsB3oTdHx0hldS3kekjh4VWefEV4cAFE/yy
         vRFQ==
X-Forwarded-Encrypted: i=1; AKwUvByOEpwxCQhWZjfjUFlgpVghH7X3G/Xj+C2APuiIpjP4njYB4nJmeHRczHLIqfR5sbplYZmyQqdJRqw=@lists.infradead.org
X-Gm-Message-State: AFq9FYLh2B8AH1gOlWqyeZt3bg/Tjus0ECCjiS3R/eaHnoqkuPQvU8YV
	rd1DRpKiSnp4Z6vDUeXIeY3Gm7xixCC9dlhZyLHHstURbiskHK2IUBfcQkzHCrB4wkghraTLXdd
	OYhCeElctZZw78hVgZ1SC3UV4q6v88tovA56nVosMHuZFRAZV6PcDBmk6UPKD+hbx0aVI
X-Gm-Gg: AYBFou1ftI1KebBgTOgbdJkSfVppqwbbJt1Jj7BGAWDrt+966d/pm2the2rn0Ey6sGo
	4QXA6vyjYttEiGMbs2AdC5994xOvAqvT7WD6uHNMadCAKC8AEZWvzVesUU30rHFjbzFmO5ecgEU
	eF+4ThDC01Q6gOEfMUC6A4iJ4SJB25yhfswT8g6DXOzU5JSLFq57a4noERGPgfjrwBhlQshP5KR
	Nf17XsY/QPYwYWSwa6C5Vrn6tTahDvCzVnEX13jJjg4iV0gVyuQ3Kt+8R8NG12I4e5XUo3qDo1x
	hsNn3ZRgAjYjqtVcAc3aWitnpi9dHGhYZy/7W+Y8qidDCpzj4gVEOz9cRIQBZIkCBFj9con0eUd
	7iSXavtj4Sl9DdZTOkEv3fDpib14=
X-Received: by 2002:a05:6a00:811:b0:883:54dc:7892 with SMTP id d2e1a72fcca58-897c86a3c91mr16386198b3a.52.1792041038785;
        Wed, 14 Oct 2026 22:10:38 -0700 (PDT)
X-Received: by 2002:a05:6a00:811:b0:883:54dc:7892 with SMTP id d2e1a72fcca58-897c86a3c91mr16386162b3a.52.1792041038316;
        Wed, 14 Oct 2026 22:10:38 -0700 (PDT)
Received: from [10.204.66.72] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-89d80508d5dsm1800223b3a.50.2026.10.14.22.10.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Oct 2026 22:10:38 -0700 (PDT)
Message-ID: <df8d5a9a-b1c1-4346-bac4-c2c028678d91@oss.qualcomm.com>
Date: Thu, 15 Oct 2026 10:40:29 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
Subject: Re: [PATCH v2 3/8] dt-bindings: media: Add CAMSS device for Hawi
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Bryan O'Donoghue <bod@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Suresh Vankadara <svankada@qti.qualcomm.com>,
        Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
        linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-media@vger.kernel.org
References: <20261013-hawi-maili-camss-v2-0-fc93222da89c@oss.qualcomm.com>
 <20261013-hawi-maili-camss-v2-3-fc93222da89c@oss.qualcomm.com>
 <20261014-fast-swinging-dormouse-26b5bf@quoll>
Content-Language: en-US
In-Reply-To: <20261014-fast-swinging-dormouse-26b5bf@quoll>
X-Authority-Analysis: v=2.4 cv=OdENnRTY c=1 sm=1 tr=0 ts=6ad0604f cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=m9Dd15Dd7eNj5BCxSOQA:9 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-ORIG-GUID: oHQgaOD5_rVaPRErkZUnYA4vHdeX3xKg
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDE1MDAyMCBTYWx0ZWRfXxr5kQpehZ5XB
 U26M9gNwSuvj4IFatFR0TbKfeZ/wZcBpOiqyEuX/24Oll5UefEyKVaZMSg2BeC9mQAO1Bkep2HT
 5iRv9x0zdmeka73oZjLFF4ktcSUjRyvZeQtjNcLBK7Ok6PAh/GcecWvVDb0GIsCelzozKiKZavW
 VU8ioxme0dGwgGGRijj6ZbJ5pPWrKohWhOcNk9BlYe8RT1aQPHTeo8dlpPnuMfmbNrkHNcKU/KR
 DJh1krG6gM4thKL4uBJVbzzL/p7zo9KcyV8Fy+AYHpv7IEMvL9pQyttQdNlAwqY0qIqw+FR/BYe
 wMxyTIqi0dWv9IWSHLuNBIZv99TP9emOWFdYaE5ThXmY585i5eirqDRBfnZM2ged99F2BULgJgo
 vMDX5g493JryxNfgdda2J1sbPsV+t8+4keZcfchKw5/zPbxQA3FH4Q8FqQ4xbOKIJkbRJtavTI8
 JsQpX0USkIWR8QKuZ0A==
X-Proofpoint-GUID: oHQgaOD5_rVaPRErkZUnYA4vHdeX3xKg
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDE1MDAyMCBTYWx0ZWRfX3q2h5va+Lkvt
 ldkPCrBw+DvpJrQt3dtXkFKKWYKVsdeR0Saoe9NmGgXy3QU+mBArapn1v28HGJd0WVeCJC/C611
 fqyJnaLXBCKff4l2Qsk8y+rqnLcWX/I=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-13_01,2026-10-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 spamscore=0 impostorscore=0 phishscore=0 clxscore=1015
 priorityscore=1501 lowpriorityscore=0 malwarescore=0 adultscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610080000
 definitions=main-2610150020
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261014_221041_365672_3A164750 
X-CRM114-Status: UNSURE (   9.97  )
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



On 14-10-2026 16:48, Krzysztof Kozlowski wrote:
> ... so here is the missing file from next patch, so just squash these
> two.
> 
> Don't add new device piece by piece.
Our earlier plan was to send Hawi and Maili as separate series.
However, since Maili uses Hawi as a direct fallback, we combined
both in the same series.

Sure, I will squash the patches. 
In a single series, it does not make sense to add the device piece by piece.

-- 
Regards,
Nihal Kumar Gupta


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
