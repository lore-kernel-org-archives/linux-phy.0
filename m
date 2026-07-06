Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D922C43458
	for <linux-phy@archiver.kernel.org>; Mon,  6 Jul 2026 18:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f3GpIrdJWlY4yWkxmsYB9aJygIGq34VSJNDljI32X8A=; b=4y7bw3ujkdfjQJ
	Q6ntAqH1qUr/DjmnBsSRw5ELRKBHsK2L5fbeVV1AyfnJUJNWn2IEAxY/MdYUQpzbSVWY0PfFAxGxn
	QiF71r/BekdQM1ZBAYmMtiKAZOoF9gtEycOTFsGQJRSBM/9ElzgswF5hQoCbOkWzNZdeU6+M5/Bgx
	vgnundJrxqigd6l87yZhRIRwE9bfHmX4X/98CffezSnOTfUtp8lckYvNvcE8L7gRVhvtdTDvQxjmo
	A4654nVUwfI5Zo0zzmTTfM16jqA/BMwnjKD2tdf9YL+SSvSTHOMwVCxTEWlYf1Alvfqo4IjTAIQ9I
	nXHDplePWv/mZtJCbydA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgnzS-0000000DL5b-0qZV;
	Mon, 06 Jul 2026 18:24:22 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgnzP-0000000DL4A-1Uv9
	for linux-phy@lists.infradead.org;
	Mon, 06 Jul 2026 18:24:20 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 666FF6JW947329
	for <linux-phy@lists.infradead.org>; Mon, 6 Jul 2026 18:24:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=CcQRmc9BaCEAXdMMGYGlgduG
	dM0vGlhEkoGbgTNTQWU=; b=lNUbb/Ge+fiE6E3fUcv7Jw/FULk4oxkk1wkh3+Y1
	x/hKGfAgM3xzauwD1uGAU/9DjVbFIiTfu3EWo3Be3AtHEolg/IHDqmaEgMs/uO8z
	iSre4KhCH2Qyid8gtY7vz03VaPnXx4bUE4D4R8O2eWwsCfYdKJsYdv9MlzgM/YH7
	2/hFtwwscC4i/YOY6YuG6SrFlgFKOCCKALBi8TJwWjw1ViYpsqUv8u6FI5evO14v
	THkT6gWhTBU/oSiLH63A2g7h27vvFgZgUavkK30JEPuyfzwGJGIQn5cFZnp45Gqo
	4WOZLDOfUc1Df9rZpa4NJReR7OULlo06wc2b1/IvFQs4xw==
Received: from mail-vk1-f197.google.com (mail-vk1-f197.google.com [209.85.221.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f88h52rmx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 06 Jul 2026 18:24:18 +0000 (GMT)
Received: by mail-vk1-f197.google.com with SMTP id 71dfb90a1353d-5bebeb08c02so179144e0c.1
        for <linux-phy@lists.infradead.org>; Mon, 06 Jul 2026 11:24:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783362258; x=1783967058; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=CcQRmc9BaCEAXdMMGYGlgduGdM0vGlhEkoGbgTNTQWU=;
        b=Rn6cCHXuvu87pmitRvKmNfLHcTWaJFsfxWiMMS7UcmlzPdaE4kBwvMT0RmqMP8evwK
         O6HnTTrCcZFf+IVp/Jm9Eiw/asOO8xv1POZSLiEAFxl9WEy7LMioMg0SGndh7yDJyLp/
         q8hvxJ5p2eby/rPVXBVIlaWmZMi565xA6yeh2Y01YuDiskB6HoPdgkfqCah2xdiNKQTy
         wxC8j5ug8l/5zLzgPtJaR9WxlF0Xuj0OSQU4LO8xM8MriCS+dAzmi3y3Uw4zRdBdPD8b
         FTT6YKXnd9eIqopP+zynocTyJmHixpS8ddF9Kpf6CVg8ERJTpKudwon9qS6uzFz6tUj4
         TTUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783362258; x=1783967058;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=CcQRmc9BaCEAXdMMGYGlgduGdM0vGlhEkoGbgTNTQWU=;
        b=jXbzSOWMXEX4CradPAu/UEpO5rk/DieSSjGoxy3Ze5/o4JcGkVU01ARMFCzJcneF2T
         bSwgehqMYrV3dkGz87Hrsye6ERN7QNzNi9vM2lT7AOiol2bK5JC0HV01n2h8pF9NCqY4
         8nDlkNkMei0qkoIn1E5Qw27nsih5v6huSscdp1VZVdq7VN1q6+PdLy68M3+ZJjMgNCkH
         pwCYjoAS12uQgMvpQMAjfv3eevPze9nApcgDDmDuMMiLxRXgSUiB9hA/OdaXkKhdfDKK
         ZCf/EOe6JkOYo3UkeRlbupyCKQ0hd4jyUCE7PtxQ7MXfWdhi5oy378PcpivKuWPPpFOH
         rtYg==
X-Forwarded-Encrypted: i=1; AHgh+RqCTB6F1HyO2hgpNgRwlkQTngFXVnc9omn4A5PlV4xz5DBbJZjld8xMt58JtLhF4cCmMgNfBH4OzEw=@lists.infradead.org
X-Gm-Message-State: AOJu0YwZtIaPFjBNJmGCNFlD7s4l/Br4Ahxa1Hkj3Puu4zncz5U2ybAW
	i5D8MbnzGPdZoPVXnvvE7qlhdlmUDnTkacNlylmdn1F6DlZcB70RatqpkfXjq/w1dqP4QDmB57t
	cQvujPF0NXyBdAsKrFygkz1wpm/XdWdcFmiOB6dLClycYkxMW76eKaXRn+FCb+zDqN/bH
X-Gm-Gg: AfdE7cnjc7qAtoxox5aXTrltlfzrOY8CJAAsyIRo/wtFDrhfHlNE1DT9zJfAh7RKXkz
	Dn7K9acxNh1FjK13icbii8FJHG2WxZI0QiSfDn0ZsFiqjUDltFvElIq/JyYIQXWzvkqyXOw/oyY
	oVe+/m7R2ciGP4cSXtoqFSNT5/DZ8m5JBInN4W0oqlK3zN4XRlqAmu+MxayHSmn9HgHHXV+Eycc
	YtE7KGN/hn6/Cl+t6XnJk/4TribWftWO81l3z4DEe7Jo33SrqrX0rn64Nl3jqJyrTV04mi776tN
	yl2R+M7VAkOBz1A8vhv8wmL84cekFMUpG5DekJlGR6egLZlxRae1G7/iqDJTnrMJOQHuNgy2v3r
	ORoxjhZ48E0EmcWwyBOo0iWSapMuDY+fVOVUHZxKamktbAoPTDWzvEE9/IG9GkiY8Ld7MN+fVz4
	RTQqzLouAf/9mRWg9JcnGdNXpj
X-Received: by 2002:a05:6122:659a:b0:5bc:3dde:3364 with SMTP id 71dfb90a1353d-5be907c4ee5mr1028206e0c.7.1783362257736;
        Mon, 06 Jul 2026 11:24:17 -0700 (PDT)
X-Received: by 2002:a05:6122:659a:b0:5bc:3dde:3364 with SMTP id 71dfb90a1353d-5be907c4ee5mr1028192e0c.7.1783362257235;
        Mon, 06 Jul 2026 11:24:17 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aed13bb768sm3082495e87.52.2026.07.06.11.24.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jul 2026 11:24:14 -0700 (PDT)
Date: Mon, 6 Jul 2026 21:24:12 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Esteban Urrutia <esteuwu@proton.me>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        "Joerg Roedel (AMD)" <joro@8bytes.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        iommu@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
        linux-phy@lists.infradead.org
Subject: Re: [PATCH 2/8] arm64: dts: qcom: sm8450: Remove unneeded reserved
 memory nodes
Message-ID: <4g6y4q2udludhwmoqc34afwj5svra4a4j5bmpqza7h3av2oov7@6k5r7a4meruk>
References: <20260622-sm8450-qol-v1-0-37e2ee8df9da@proton.me>
 <20260622-sm8450-qol-v1-2-37e2ee8df9da@proton.me>
 <e1e492ab-884e-442b-8410-cc100c54fd5f@oss.qualcomm.com>
 <6123a923-21dd-4f69-9ac5-02165963027c@oss.qualcomm.com>
 <b3541802-3035-40ee-8327-a65bd5d2dfee@proton.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b3541802-3035-40ee-8327-a65bd5d2dfee@proton.me>
X-Proofpoint-GUID: D28NMSer6QjdzajxEkmufSatDhg9Faqh
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA2MDE4NSBTYWx0ZWRfX04prT2d0meOE
 LtO7lmINtnYEAO5/EOK9TnKZyiTY1ccVF+nC6UNj7l/mBQ2O3UiZOfrwOx6lUFIwdK0kjXaqP/A
 JZM9FdNynMSDOGIIUGaJ1RnSRUf/WBw=
X-Authority-Analysis: v=2.4 cv=EPU2FVZC c=1 sm=1 tr=0 ts=6a4bf2d2 cx=c_pps
 a=JIY1xp/sjQ9K5JH4t62bdg==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=NjmyTZ_Ky2fEOGBI-xMA:9
 a=CjuIK1q_8ugA:10 a=zZCYzV9kfG8A:10 a=tNoRWFLymzeba-QzToBc:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA2MDE4NSBTYWx0ZWRfX9/oJuFvMW+5I
 Ybg6TJsJnAA4uRWM3ExP6jJIpaK93FEQOPwi53TZtAH4wC81lV/jgy/qrik6YGXDi4h5Ggz92Ac
 PhCUIqbMSSffbPJW0O0f/mM0vpjUvz5+TRfF6rkdJmh2ElLvfavXE5fIKcHKUQaQ7u0vFtCsqlC
 qnZZfa/oG1fAQLwOGan0VMZojmqm9ax4DmT0Tfwe0xF9Zcc5va6yHEimJbAO+KsbuQrEk5b5HFg
 gneoOtO9+0OXYp7MQ4KSYA+90pArNBNWYxwPbLJOvyzwA9HTYXDidyGzlS8gHnxGLX3JlFyBRHT
 PIEe3aWHPZ8GbE05LTVk6N1OBLtf+NpWJexcPw0wRNVJoehupgI6w4KYyBGiYIbfHaOX0efjto0
 0vRyV9LW+dTSJ81MYKFTRWUICgAjcjglknlrSjQ7VwGdyDiyS9wwediAfnGR5Yn8QRMMkG77o3v
 Z/7EvFf9UHOsXLdiGNA==
X-Proofpoint-ORIG-GUID: D28NMSer6QjdzajxEkmufSatDhg9Faqh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-06_02,2026-07-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 lowpriorityscore=0 malwarescore=0
 spamscore=0 adultscore=0 suspectscore=0 phishscore=0 bulkscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2607060185
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260706_112419_519135_3B9A98FE 
X-CRM114-Status: GOOD (  17.45  )
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

On Wed, Jun 24, 2026 at 01:26:06PM +0000, Esteban Urrutia wrote:
> 
> 
> On 6/23/26 7:03 AM, Konrad Dybcio wrote:
> >> This is mentioned in the memory map description, but is not part
> >> of it.
> >>
> >> I booted up a 8450 HDK and it doesn't even have MTE, so it's
> >> probably valid
> > 
> > i.e. it doesn't report MTE to Linux. I don't know if it's Gunyah
> > trapping it.
> Then, should device trees delete these memory regions on a case-by-case
> basis, or be left as is?

Please verify that you can actually access those areas (boot with
memtest=1)


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
