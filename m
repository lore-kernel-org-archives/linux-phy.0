Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E426F606A330
	for <linux-phy@archiver.kernel.org>; Wed, 28 Oct 2026 15:28:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=PPmz5OUp;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=mlQ5B+eE;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=TR3pSMiZ
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=UUbUHUc6Eprrpb7g6tDTrD9gVegcbp+EiI/B7JLPDis=; b=PPmz5OUpsOcFTkeLVdlW18Roll
	OAYq1lwSHSa0Of+L+cTwH+97XeU2av9qq5UFOrrqkQjN708Z8ZTmwkxjeYhD14yiQ4lUvTte2aM3g
	szZAkqc0Aqi6YxGQjDrgDLSsWypmn8Gs7nPCYPVaUbsJPu4GNwZ333viyH9V+UEp7YSUVqGR6sFV6
	bvQqE1gTsVLQnv5hEd2WI2xYAixraKag0BsNM7jNvsfPlkOB0CLFkiTNNYEFuAaIa8pIyYj7TBfyC
	yV/KvxtRIJEfIPJ03lBv5vxVcc1pbBUTZcOLUK+5qzUnUJKdrL4Y5xuqZv0Kpcs1NI02mwoWI78cU
	ouKl14ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM5ZW-00000007NFt-2pJ4;
	Wed, 28 Oct 2026 15:28:14 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM5ZU-00000007NF5-2Esq
	for linux-phy@lists.infradead.org;
	Wed, 28 Oct 2026 15:28:13 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69SFA60g4165837
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 15:28:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=tpa+XQp0QDFpzE7hdPD++YKP
	Oso0isNfYovif6itICc=; b=mlQ5B+eEc7Dzq5a66JgUvlZj/cQNxd4cC18+XRSW
	2c5i/zV2QFyO8Xa7hIhJiaYpvp6eBsES4ePVEU8DznupN1OTdBf6CGQ9HFMVL1nt
	CQnG2t9D0nkwT+dET8JjAfy9n1e9+6/H5f7e2uG/7L7z489cZKaKRNcnwNQdI3pf
	tjLSuAYkP/S8BqIbPIwM+HN1FFr50yUfIAN0dNUaKxudRAyKooFM7nmUHwPHQx09
	jmslFQc+gSN7fUGEHNnXTE+mgAW5uP/XA2t5p7elt4nGKl+tb36KcksFMae6ddqt
	8nP20cFo0iNzRrl1A+3hApOjNIlrRiQjiuS9IQVIKMbALg==
Received: from mail-vs1-f69.google.com (mail-vs1-f69.google.com [209.85.217.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hkhtngjyt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 15:28:11 +0000 (GMT)
Received: by mail-vs1-f69.google.com with SMTP id ada2fe7eead31-7c0f07b4e97so22864137.0
        for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 08:28:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793201291; x=1793806091; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=tpa+XQp0QDFpzE7hdPD++YKPOso0isNfYovif6itICc=;
        b=TR3pSMiZQ7DMvLM51piMGJkRFsLQvvwoRliI0yoTvQDqVqgbnh5C4UvkG/RL/BuoYN
         qIo20MjGuMAclKj1ANMo5g9WIJAEAoVa3WYviHO+VX3HNWfat+5AHkxGbSqG5TIbASFZ
         O2xs30mSJ9EyWVm84Gxt6Q47RsZJH/64T0giKU3AQybrw3u43uVuYiYH5ILbzaRFiLOC
         l7V27QvUbGrqQbnqzeyxRSpEWz4mxbjEU/1o9wRG/YR+ri7pa0H99a929RqsVeKTN68o
         O/Ej9gcpeeBxIyaTJZ+TA647yy7mqwB2PPzwPZg6xNb/aABZaLPsJE1jjd2n3uyfIJi5
         aEYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793201291; x=1793806091;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=tpa+XQp0QDFpzE7hdPD++YKPOso0isNfYovif6itICc=;
        b=A11hwwpmMyN06Zm2KNK+k/50W/CXolm9Wa/PYr8KE5ufJSj4IWk/646nWSP/NrNlRc
         JVemH3P8SRiSVtYaV+XoIh4FzpNjE7FVGFt6kiu468xqxIbeFtcBxxZaipjo6KmcGRGS
         efpjbPiEefPk6p7qd6cHb8DSQTrGKj2TeX0I6cpdX99kqGR5d7NMmNatB5kzetez41gF
         SxsuxOa68OwyaoH77hk7aTcmtMyUWw+cwdlTQlRjIYhL0UNO6Ez2HkU9W3++qdJRBb2s
         jb606Aoso9rJQ7Fa22QHqNiur+OrzSov7TaNW9fF0KHgctqzwvwMOqO8oXtzecV7brPU
         Aurw==
X-Forwarded-Encrypted: i=1; AKwUvByiRtYH3JDoOS7PrEGIEOpeZlsEYBGoAR3CAWliykQSbDawwCdFe6L6ADc7bWqu15lPYqtRrRTraa0=@lists.infradead.org
X-Gm-Message-State: AFq9FYJSN+RdFHl5/bh7HojDtiq+stviynbLGtpVjOJb/iOnwExsOOR0
	U6falGxfA7RmV4NhdyiEjPT7YeB2BdsrAukmXR/1kp/oed6worvi0RGLpFcEKEl1P9JzQucRldC
	0Cz2yWkeYIdWeadkym79UkZ5mLjtC/ghQb+2w2GGTHHC8WL4arRRY1URrXERfXSirIV2B
X-Gm-Gg: AYBFou24Xh5mPBZeKeRJZpbRS9QBmmeRI17K8197tEk1ZSUcuxuY1gMisPJu/iw9OJy
	Ap66QDtZsDpOVqG/ZwTYKRgCD6Pkskf6uiVDRs36U0Vzl4txFw69jsndg1sxGwCBjyHIPv3tXmh
	oPoEW4B/UB7vQHimhWHbQw8M6S8VUwMgrhcr9LxqUdKA5YqwvKfOy1erav6j2yfIxuWT4n1EQAQ
	en8vazJAoFh82oHJ4IZhcy0E8QE1w8R1azdfKlZpOfxreOYkKcpvoxY8BVwBLORZF0UAXAbJDzr
	wdjK3lQZuI1fq+8LM6Vth5jE1L90JQx1H6r1dwencGxHac6JNIBVb1WNklKZWYGbV4FP900dXiA
	I8BLFgHXElSeJJLW2MxR72L8U1tgrDcFW7bGZrnwdZzVBA1Hd/wc8RpqDsq/B1kWy4g==
X-Received: by 2002:a05:6102:149a:b0:7a7:198a:c2bc with SMTP id ada2fe7eead31-7d03a59fea6mr1496663137.36.1793201290555;
        Wed, 28 Oct 2026 08:28:10 -0700 (PDT)
X-Received: by 2002:a05:6102:149a:b0:7a7:198a:c2bc with SMTP id ada2fe7eead31-7d03a59fea6mr1496628137.36.1793201289890;
        Wed, 28 Oct 2026 08:28:09 -0700 (PDT)
Received: from oss.qualcomm.com ([188.27.161.187])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4aa7f322c46sm54505e9.2.2026.10.28.08.28.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Oct 2026 08:28:09 -0700 (PDT)
Date: Wed, 28 Oct 2026 17:28:07 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Cc: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        jeyaprakash.soundrapandian@oss.qualcomm.com,
        Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v23 12/15] arm64: dts: qcom: kaanapali: Add CAMSS and
 CSIPHY block definitions
Message-ID: <5uovgjoe7w5z5equxekkmcnqhlmoi4ruuykea3mel63eyyxh2h@ovvzdwu3hfjz>
References: <20261028-kaanapali-camss-v23-0-95f250b18612@oss.qualcomm.com>
 <20261028-kaanapali-camss-v23-12-95f250b18612@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261028-kaanapali-camss-v23-12-95f250b18612@oss.qualcomm.com>
X-Proofpoint-GUID: poQDXm5DShtjsGUhftVlXgKiZVDIMjoW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI4MDA2MSBTYWx0ZWRfX2wjH8DujgogE
 sVgEqb3r+PGrmE6aCqqm04kbGLktq/VnV6cLs93r1l47zXF45RPeGh6q/CemIc2JXvoVW8ZSvfF
 9h1n/tEDqJwnvmn+lG4cTSi9bXltMxY6xUOQ8GulgI6jcLU9z8Xsrzn779/LStDBAT+Alxvh6Hm
 jSgXyu+oawWegPUlq0e8PHFD2fT23GiN7AkJPZCJ4Cv5fpx5ILepU0O9L9cP2a4qKBn0mA5FBHR
 67/B5a3N+geEabBxcZQpLQ6Xxxy6LJ0G+H4T0n+7HcvtixyI/TA871uoLHcM6ErZ0gw0AteNkjh
 ywPYz1r6oifotSuKu4GDsb9Sg+R7+FktocFgBkdyambswVXUorL4daIngp8yK0xlAGmQ74v1I+I
 DtOMAdJtK5XkP0+QBi/JxI/w0UFAVOy63lC2bzr/4svAsnlhUzgJ4ZiQ+0AbtOFAk8+QiGj3rK1
 pMU9LjNOnIRiIxsyQ7w==
X-Authority-Analysis: v=2.4 cv=c/A+0h9l c=1 sm=1 tr=0 ts=6ae2148b cx=c_pps
 a=5HAIKLe1ejAbszaTRHs9Ug==:117 a=Qvngrl3H0rQgGg+94q4QgA==:17
 a=kj9zAlcOel0A:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=4HpnP7yKktpVlNN_chcA:9 a=CjuIK1q_8ugA:10
 a=gYDTvv6II1OnSo0itH1n:22
X-Proofpoint-ORIG-GUID: poQDXm5DShtjsGUhftVlXgKiZVDIMjoW
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI4MDA2MSBTYWx0ZWRfX1f1dgzFrD5TI
 LEEpqgsrcwqjQqAK8H3ukSNlczBypEveP/fqxEaD/IyZwbvdwkh3qF5Pjr38c0IDqCMAtNbpFy5
 Qo0+LxKsBoD/D6mdg+wzdgfbd9z1DAA=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-28_05,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 impostorscore=0 bulkscore=0 lowpriorityscore=0
 phishscore=0 adultscore=0 clxscore=1015 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610280061
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_082812_579201_A84DA82C 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 26-10-28 08:20:46, Hangxiang Ma wrote:
> Describe the CAMSS and CSIPHY blocks on Kaanapali so that camera pipelines
> can be enabled by board device trees.
> 
> The camera subsystem contains:
> - 6 x CSIPHY (CSI Physical Layer)
> - 3 x TPG (Test Pattern Generator)
> - 3 x CSID (CSI Decoder)
> - 2 x CSID Lite
> - 3 x VFE (Video Front End), 5 RDI per VFE
> - 2 x VFE Lite, 4 RDI per VFE Lite
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
